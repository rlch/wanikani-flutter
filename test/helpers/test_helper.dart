import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wanikani_flutter/config.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/assignments.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/level_progressions.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/resets.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/review_statistics.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/reviews.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/spaced_repetition_systems.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/study_materials.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/subjects.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/summary.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/user.dart';
import 'package:wanikani_flutter/core/data/datasources/resources/voice_actors.dart';

const _apiToken = apiToken;

class TestHelpers {
  static final TestHelpers _instance = TestHelpers._internal();
  factory TestHelpers() => _instance;
  TestHelpers._internal()
      : remote = TestWanikaniRemoteDataSources(apiToken: apiToken);

  static const String apiToken = _apiToken;
  late final TestWanikaniRemoteDataSources remote;
}

class TestWanikaniRemoteDataSources {
  TestWanikaniRemoteDataSources({required String apiToken, Dio? dio}) {
    (dio = this.dio = dio ?? Dio()).options.headers
      ..['Wanikani-Revision'] = '20170710'
      ..['Authorization'] = 'Bearer $apiToken';
    /// dio.interceptors.add(PrettyDioLogger());

    assignments = AssignmentsRemoteDataSource(dio);
    levelProgressions = LevelProgressionsRemoteDataSource(dio);
    resets = ResetsRemoteDataSource(dio);
    reviewStatistics = ReviewStatisticsRemoteDataSource(dio);
    reviews = ReviewsRemoteDataSource(dio);
    spacedRepetitionSystems = SpacedRepetitionSystemsRemoteDataSource(dio);
    studyMaterials = StudyMaterialsRemoteDataSource(dio);
    subjects = SubjectsRemoteDataSource(dio);
    summary = SummaryRemoteDataSource(dio);
    user = UserRemoteDataSource(dio);
    voiceActors = VoiceActorsRemoteDataSource(dio);
  }

  late final Dio dio;
  late final AssignmentsRemoteDataSource assignments;
  late final LevelProgressionsRemoteDataSource levelProgressions;
  late final ResetsRemoteDataSource resets;
  late final ReviewStatisticsRemoteDataSource reviewStatistics;
  late final ReviewsRemoteDataSource reviews;
  late final SpacedRepetitionSystemsRemoteDataSource spacedRepetitionSystems;
  late final StudyMaterialsRemoteDataSource studyMaterials;
  late final SubjectsRemoteDataSource subjects;
  late final SummaryRemoteDataSource summary;
  late final UserRemoteDataSource user;
  late final VoiceActorsRemoteDataSource voiceActors;
}
