import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/data/models/model.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subscription_type.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/user.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel extends User with IModel {
  UserModel({
    required this.preferences,
    required this.subscription,
    required int level,
    required String profileUrl,
    required DateTime startedAt,
    required String username,
    DateTime? currentVacationStartedAt,
  }) : super(
          level: level,
          preferences: preferences,
          profileUrl: profileUrl,
          startedAt: startedAt,
          subscription: subscription,
          username: username,
          currentVacationStartedAt: currentVacationStartedAt,
        );
  final PreferencesModel preferences;
  final SubscriptionModel subscription;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class PreferencesModel extends Preferences {
  const PreferencesModel({
    required int defaultVoiceActorId,
    required bool lessonsAutoplayAudio,
    required int lessonsBatchSize,
    required LessonsPresentationOrder lessonsPresentationOrder,
    required bool reviewsAutoplayAudio,
    required bool reviewsDisplaySrsIndicator,
  }) : super(
          defaultVoiceActorId: defaultVoiceActorId,
          lessonsAutoplayAudio: lessonsAutoplayAudio,
          lessonsBatchSize: lessonsBatchSize,
          lessonsPresentationOrder: lessonsPresentationOrder,
          reviewsAutoplayAudio: reviewsAutoplayAudio,
          reviewsDisplaySrsIndicator: reviewsDisplaySrsIndicator,
        );

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(json);
  Map<String, dynamic> toJson() => _$PreferencesModelToJson(this);
}

@JsonSerializable()
class SubscriptionModel extends Subscription {
  const SubscriptionModel({
    required bool active,
    required int maxLevelGranted,
    required SubscriptionType type,
    DateTime? periodEndsAt,
  }) : super(
          active: active,
          maxLevelGranted: maxLevelGranted,
          type: type,
          periodEndsAt: periodEndsAt,
        );

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionModelToJson(this);
}
