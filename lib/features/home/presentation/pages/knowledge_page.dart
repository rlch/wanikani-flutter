import 'package:flutter/material.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/usecases/subjects.dart';
import 'package:wanikani_flutter/core/presentation/theme/theme.dart';
import 'package:wanikani_flutter/core/utils/extensions/color_x.dart';
import 'package:wanikani_flutter/injection.dart';

class _KnowledgeTab {
  _KnowledgeTab({
    required this.engTitle,
    required this.japTitle,
    required this.subjectType,
  });

  final String engTitle;
  final String japTitle;
  final SubjectType subjectType;
}

class KnowledgePage extends StatefulWidget {
  const KnowledgePage({Key? key}) : super(key: key);

  @override
  _KnowledgePageState createState() => _KnowledgePageState();
}

class _KnowledgePageState extends State<KnowledgePage> with SingleTickerProviderStateMixin {
  late final TabController controller;
  final List<_KnowledgeTab> tabs = [
    _KnowledgeTab(
      engTitle: 'Radicals',
      japTitle: '部首',
      subjectType: SubjectType.radical,
    ),
    _KnowledgeTab(
      engTitle: 'Kanji',
      japTitle: '漢字',
      subjectType: SubjectType.kanji,
    ),
    _KnowledgeTab(
      engTitle: 'Vocabulary',
      japTitle: '単語',
      subjectType: SubjectType.vocabulary,
    ),
  ];

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: TabBar(
        controller: controller,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
        tabs: [
          for (final tab in tabs)
            Tab(
              text: tab.engTitle,
              icon: Text(tab.japTitle),
            )
        ],
      ),
      body: Column(
        children: [
          Divider(height: 0),
          const SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [for (final tab in tabs) _KnowledgeTabView(subjectType: tab.subjectType)],
            ),
          ),
        ],
      ),
    );
  }
}

class _KnowledgeTabView extends StatefulWidget {
  const _KnowledgeTabView({required this.subjectType, Key? key}) : super(key: key);

  final SubjectType subjectType;

  @override
  __KnowledgeTabViewState createState() => __KnowledgeTabViewState();
}

class __KnowledgeTabViewState extends State<_KnowledgeTabView> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder<CollectionModel<SubjectModel>>(
      future: gi<SubjectsUseCases>().getAll(
        types: [widget.subjectType],
        levels: [1],
      ),
      builder: (context, snap) {
        final Widget loading = Center(child: CircularProgressIndicator());
        return snap.data?.maybeWhen(
              (data, pages, object, url, dataUpdatedAt, totalCount) {
                return GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    final resource = data[i];

                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: resource.maybeMap(
                        (model) => _KnowledgeTile(model.data),
                        orElse: () => Text('error'),
                      ),
                    );
                  },
                );
              },
              orElse: () => loading,
            ) ??
            loading;
      },
    );
  }
}

class _KnowledgeTile extends StatelessWidget {
  _KnowledgeTile(
    this.subject, {
    BorderRadius? tileRadius,
    Key? key,
  })  : this.tileRadius = tileRadius ?? BorderRadius.circular(8),
        super(key: key);

  final SubjectModel subject;

  final BorderRadius? tileRadius;

  @override
  Widget build(BuildContext context) {
    final subjectColor = WanikaniTheme.subjectColor(subject.type);
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: subjectColor.darken(15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: subjectColor,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              subject.characters ?? '',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26,
                shadows: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(-1, 3),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
