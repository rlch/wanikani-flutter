import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wanikani_flutter/core/data/models/resources/assignment.dart';
import 'package:wanikani_flutter/core/data/models/resources/summary.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/object.dart';
import 'package:wanikani_flutter/core/domain/entities/resource.dart';
import 'package:wanikani_flutter/core/domain/entities/response.dart';

import 'model.dart';
import 'resources/kanji.dart';
import 'resources/level_progression.dart';
import 'resources/radical.dart';
import 'resources/reset.dart';
import 'resources/review.dart';
import 'resources/review_statistic.dart';
import 'resources/spaced_repetition_system.dart';
import 'resources/study_material.dart';
import 'resources/user.dart';
import 'resources/vocabulary.dart';

part 'resource.freezed.dart';

@freezed
class ResourceModel<T extends IModel> with _$ResourceModel<T> {
  const ResourceModel._();

  @Implements.fromString('Resource<T>')
  @Implements.fromString('IResponse<T>')
  const factory ResourceModel(
    int id, {
    required ObjectType object,
    required String url,
    required DateTime dataUpdatedAt,
    required T data,
  }) = Data<T>;

  const factory ResourceModel.loading() = Loading;
  const factory ResourceModel.error(Exception exception) = ErrorDetails;

  factory ResourceModel.fromJson(Map<String, dynamic> json) {
    late final IModel Function() fromJson;
    final data = json['data'] as Map<String, dynamic>;
    print(data);
    final ObjectType object = ObjectType.fromJson(json['object'] as String);

    switch (object) {
      case ObjectType.collection:
        throw Exception('Attempted to parse a Collection inside a Resource.');
      case ObjectType.report:
        fromJson = () => SummaryModel.fromJson(data);
        break;
      case ObjectType.assignment:
        fromJson = () => AssignmentModel.fromJson(data);
        break;
      case ObjectType.kanji:
        fromJson = () => KanjiModel.fromJson(data);
        break;
      case ObjectType.levelProgression:
        fromJson = () => LevelProgressionModel.fromJson(data);
        break;
      case ObjectType.radical:
        fromJson = () => RadicalModel.fromJson(data);
        break;
      case ObjectType.reset:
        fromJson = () => ResetModel.fromJson(data);
        break;
      case ObjectType.reviewStatistic:
        fromJson = () => ReviewStatisticModel.fromJson(data);
        break;
      case ObjectType.review:
        fromJson = () => ReviewModel.fromJson(data);
        break;
      case ObjectType.spacedRepetitionSystem:
        fromJson = () => SpacedRepetitionSystemModel.fromJson(data);
        break;
      case ObjectType.studyMaterial:
        fromJson = () => StudyMaterialModel.fromJson(data);
        break;
      case ObjectType.user:
        fromJson = () => UserModel.fromJson(data);
        break;
      case ObjectType.vocabulary:
        fromJson = () => VocabularyModel.fromJson(data);
        break;
    }

    return _$Data<T>(
      json['id'] as int,
      object: object,
      url: json['url'] as String,
      dataUpdatedAt: DateTime.parse(json['data_updated_at'] as String),
      data: fromJson() as T,
    );
  }

  Map<String, dynamic> toJson() {
    return this.when<Map<String, dynamic>>(
      (id, object, url, dataUpdatedAt, data) => {
        'id': id,
        'object': object.toJson(),
        'url': url,
        'data_updated_at': dataUpdatedAt.toIso8601String(),
        'data': data,
      },
      loading: () => {},
      error: (e) => {},
    );
  }
}
