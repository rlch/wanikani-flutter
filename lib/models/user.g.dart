// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    currentVacationStartedAt: json['current_vacation_started_at'] == null
        ? null
        : DateTime.parse(json['current_vacation_started_at'] as String),
    level: json['level'] as int,
    preferences:
        Preferences.fromJson(json['preferences'] as Map<String, dynamic>),
    profileUrl: json['profile_url'] as String,
    startedAt: DateTime.parse(json['started_at'] as String),
    subscription: json['subscription'] as Object,
    username: json['username'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'current_vacation_started_at':
          instance.currentVacationStartedAt?.toIso8601String(),
      'level': instance.level,
      'preferences': instance.preferences.toJson(),
      'profile_url': instance.profileUrl,
      'started_at': instance.startedAt.toIso8601String(),
      'subscription': instance.subscription,
      'username': instance.username,
    };

Preferences _$PreferencesFromJson(Map<String, dynamic> json) {
  return Preferences(
    defaultVoiceActorId: json['default_voice_actor_id'] as int,
    lessonsAutoplayAudio: json['lessons_autoplay_audio'] as bool,
    lessonsBatchSize: json['lessons_batch_size'] as int,
    lessonsPresentationOrder: _$enumDecode(
        _$LessonsPresentationOrderEnumMap, json['lessons_presentation_order']),
    reviewsAutoplayAudio: json['reviews_autoplay_audio'] as bool,
    reviewsDisplaySrsIndicator: json['reviews_display_srs_indicator'] as bool,
  );
}

Map<String, dynamic> _$PreferencesToJson(Preferences instance) =>
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

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
    active: json['active'] as bool,
    maxLevelGranted: json['max_level_granted'] as int,
    periodEndsAt: json['period_ends_at'] == null
        ? null
        : DateTime.parse(json['period_ends_at'] as String),
    type: _$enumDecode(_$SubscriptionTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'active': instance.active,
      'max_level_granted': instance.maxLevelGranted,
      'period_ends_at': instance.periodEndsAt?.toIso8601String(),
      'type': _$SubscriptionTypeEnumMap[instance.type],
    };

const _$SubscriptionTypeEnumMap = {
  SubscriptionType.free: 'free',
  SubscriptionType.recurring: 'recurring',
  SubscriptionType.lifetime: 'lifetime',
};
