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
import 'package:wanikani_flutter/models/subject.dart';
import 'package:wanikani_flutter/models/summary.dart';
import 'package:wanikani_flutter/models/user.dart';
import 'package:wanikani_flutter/models/voice_actor.dart';
import 'package:wanikani_flutter/utils/converters/date_time.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

part 'wanikani_services.g.dart';

part 'resources/assignments.dart';
part 'resources/level_progressions.dart';
part 'resources/resets.dart';
part 'resources/reviews.dart';
part 'resources/review_statistics.dart';
part 'resources/spaced_repetition_systems.dart';
part 'resources/study_materials.dart';
part 'resources/subjects.dart';
part 'resources/summary.dart';
part 'resources/user.dart';
part 'resources/voice_actors.dart';

class WaniKaniServices {
  WaniKaniServices({required this.apiToken, Dio? dio}) : dio = dio ?? Dio() {
    this.dio.options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';
    this.dio.interceptors.add(PrettyDioLogger(requestHeader: true));
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
  _Subjects get subjects => _Subjects(dio);
  _Summary get summary => _Summary(dio);
  _User get user => _User(dio);
  _VoiceActors get voiceActors => _VoiceActors(dio);

  static const basePath = 'https://api.wanikani.com/v2';
}

extension on DateTime {
  String toJson() => toIso8601String();
}
