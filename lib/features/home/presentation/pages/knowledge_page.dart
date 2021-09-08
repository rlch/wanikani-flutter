import 'package:flutter/material.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/usecases/subjects.dart';
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
        tabs: [for (final tab in tabs) Tab(text: tab.engTitle, icon: Text(tab.japTitle))],
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

class _KnowledgeTabView extends StatelessWidget {
  const _KnowledgeTabView({required this.subjectType, Key? key}) : super(key: key);

  final SubjectType subjectType;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CollectionModel<SubjectModel>>(
      future: gi<SubjectsUseCases>().getAll(
        types: [subjectType],
        levels: [1],
      ),
      builder: (context, snap) {
        final Widget loading = Center(child: CircularProgressIndicator());
        return snap.data?.when(
              (data, pages, object, url, dataUpdatedAt, totalCount) {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemCount: data.length,
                  itemBuilder: (context, i) {
                    final subject = data[i];
                    final title = subject.maybeMap(
                      (value) => value.data.characters ?? '',
                      orElse: () => '',
                    );

                    return Center(child: Text(title));
                  },
                );
              },
              loading: () => loading,
              error: (e) => Center(child: Text(e.toString())),
            ) ??
            loading;
      },
    );
  }
}
