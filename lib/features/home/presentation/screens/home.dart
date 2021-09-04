import 'package:flutter/material.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/usecases/subjects.dart';
import 'package:wanikani_flutter/features/home/presentation/widgets/app_bar.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';
import 'package:wanikani_flutter/injection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.decoration.backgroundTexture.path),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: FutureBuilder<CollectionModel<SubjectModel>>(
          future: gi<SubjectsUseCases>().getAll(
            types: [SubjectType.kanji],
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

                        return Text(title);
                      },
                    );
                  },
                  loading: () => loading,
                  error: (e) => Center(child: Text(e.toString())),
                ) ??
                loading;
          },
        ),
      ),
    );
  }
}
