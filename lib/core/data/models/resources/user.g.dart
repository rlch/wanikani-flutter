// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
    json['id'] as String,
    preferences:
        PreferencesModel.fromJson(json['preferences'] as Map<String, dynamic>),
    subscription: SubscriptionModel.fromJson(
        json['subscription'] as Map<String, dynamic>),
    level: json['level'] as int,
    profileUrl: json['profile_url'] as String,
    startedAt: DateTime.parse(json['started_at'] as String),
    username: json['username'] as String,
    currentVacationStartedAt: json['current_vacation_started_at'] == null
        ? null
        : DateTime.parse(json['current_vacation_started_at'] as String),
  )..lastCheckedCacheAt = json['last_checked_cache_at'] == null
      ? null
      : DateTime.parse(json['last_checked_cache_at'] as String);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'last_checked_cache_at': instance.lastCheckedCacheAt?.toIso8601String(),
      'id': instance.id,
      'current_vacation_started_at':
          instance.currentVacationStartedAt?.toIso8601String(),
      'level': instance.level,
      'profile_url': instance.profileUrl,
      'started_at': instance.startedAt.toIso8601String(),
      'username': instance.username,
      'preferences': instance.preferences.toJson(),
      'subscription': instance.subscription.toJson(),
    };

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) {
  return PreferencesModel(
    defaultVoiceActorId: json['default_voice_actor_id'] as int,
    lessonsAutoplayAudio: json['lessons_autoplay_audio'] as bool,
    lessonsBatchSize: json['lessons_batch_size'] as int,
    lessonsPresentationOrder: LessonsPresentationOrder.fromJson(
        json['lessons_presentation_order'] as String),
    reviewsAutoplayAudio: json['reviews_autoplay_audio'] as bool,
    reviewsDisplaySrsIndicator: json['reviews_display_srs_indicator'] as bool,
  );
}

Map<String, dynamic> _$PreferencesModelToJson(PreferencesModel instance) =>
    <String, dynamic>{
      'default_voice_actor_id': instance.defaultVoiceActorId,
      'lessons_autoplay_audio': instance.lessonsAutoplayAudio,
      'lessons_batch_size': instance.lessonsBatchSize,
      'lessons_presentation_order': instance.lessonsPresentationOrder.toJson(),
      'reviews_autoplay_audio': instance.reviewsAutoplayAudio,
      'reviews_display_srs_indicator': instance.reviewsDisplaySrsIndicator,
    };

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return SubscriptionModel(
    active: json['active'] as bool,
    maxLevelGranted: json['max_level_granted'] as int,
    type: SubscriptionType.fromJson(json['type'] as String),
    periodEndsAt: json['period_ends_at'] == null
        ? null
        : DateTime.parse(json['period_ends_at'] as String),
  );
}

Map<String, dynamic> _$SubscriptionModelToJson(SubscriptionModel instance) =>
    <String, dynamic>{
      'active': instance.active,
      'max_level_granted': instance.maxLevelGranted,
      'period_ends_at': instance.periodEndsAt?.toIso8601String(),
      'type': instance.type.toJson(),
    };
