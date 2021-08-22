import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wanikani_flutter/enums/subject_type.dart';
import 'package:wanikani_flutter/interfaces/collection.dart';
import 'package:wanikani_flutter/interfaces/resource.dart';
import 'package:wanikani_flutter/models/assignment.dart';
import 'package:wanikani_flutter/models/level_progression.dart';
import 'package:wanikani_flutter/models/reset.dart';
import 'package:wanikani_flutter/models/review.dart';
import 'package:wanikani_flutter/models/review_statistic.dart';
import 'package:wanikani_flutter/models/spaced_repetition_system.dart';
import 'package:wanikani_flutter/models/study_material.dart';

part 'wanikani_services.g.dart';

part 'resources/assignments.dart';
part 'resources/level_progressions.dart';
part 'resources/resets.dart';
part 'resources/reviews.dart';
part 'resources/review_statistics.dart';
part 'resources/spaced_repetition_systems.dart';
part 'resources/study_materials.dart';

class WaniKaniServices {
  WaniKaniServices({required this.apiToken, Dio? dio}) : dio = dio ?? Dio() {
    this.dio.options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';
  }

  late final Dio dio;
  final String apiToken;

  _Assignments get assignments => _Assignments(dio);
  _LevelProgressions get levelProgressions => _LevelProgressions(dio);
  _Resets get resets => _Resets(dio);
  _Reviews get reviews => _Reviews(dio);
  _ReviewStatistics get reviewStatistics => _ReviewStatistics(dio);
  _SpacedRepetitionSystems get srs => _SpacedRepetitionSystems(dio);
  _StudyMaterials get studyMaterials => _StudyMaterials(dio);
}
