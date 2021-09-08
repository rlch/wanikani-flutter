import 'package:flutter/material.dart';
import 'package:wanikani_flutter/core/data/models/collection.dart';
import 'package:wanikani_flutter/core/data/models/resources/subject.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/usecases/subjects.dart';
import 'package:wanikani_flutter/injection.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CollectionModel<SubjectModel>>(
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
    );
  }
}
