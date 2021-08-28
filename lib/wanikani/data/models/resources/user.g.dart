// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel(
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
    lessonsPresentationOrder: _$enumDecode(
        _$LessonsPresentationOrderEnumMap, json['lessons_presentation_order']),
    reviewsAutoplayAudio: json['reviews_autoplay_audio'] as bool,
    reviewsDisplaySrsIndicator: json['reviews_display_srs_indicator'] as bool,
  );
}

Map<String, dynamic> _$PreferencesModelToJson(PreferencesModel instance) =>
    <String, dynamic>{
      'default_voice_actor_id': instance.defaultVoiceActorId,
      'lessons_autoplay_audio': instance.lessonsAutoplayAudio,
      'lessons_batch_size': instance.lessonsBatchSize,
      'lessons_presentation_order':
          _$LessonsPresentationOrderEnumMap[instance.lessonsPresentationOrder],
      'reviews_autoplay_audio': instance.reviewsAutoplayAudio,
      'reviews_display_srs_indicator': instance.reviewsDisplaySrsIndicator,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$LessonsPresentationOrderEnumMap = {
  LessonsPresentationOrder.ascendingLevelThenSubject:
      'ascendingLevelThenSubject',
  LessonsPresentationOrder.shuffled: 'shuffled',
  LessonsPresentationOrder.ascendingLevelThenShuffled:
      'ascendingLevelThenShuffled',
};

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return SubscriptionModel(
    active: json['active'] as bool,
    maxLevelGranted: json['max_level_granted'] as int,
    type: _$enumDecode(_$SubscriptionTypeEnumMap, json['type']),
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
      'type': instance.type,
    };

const _$SubscriptionTypeEnumMap = {
  SubscriptionType.free: 'free',
  SubscriptionType.recurring: 'recurring',
  SubscriptionType.lifetime: 'lifetime',
};
