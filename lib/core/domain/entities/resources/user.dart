import 'package:wanikani_flutter/core/domain/entities/enums/subscription_type.dart';

/// The summary report contains currently available lessons and reviews and the reviews that will become
/// available in the next 24 hours, grouped by the hour.
class User {
  const User({
    required this.currentVacationStartedAt,
    required this.level,
    required this.preferences,
    required this.profileUrl,
    required this.startedAt,
    required this.subscription,
    required this.username,
  });

  /// If the user is on vacation, this will be the timestamp of when that vacation started. If the user is not on vacation, this is null.
  final DateTime? currentVacationStartedAt;

  /// The current level of the user. This ignores subscription status.
  final int level;

  /// User settings specific to the Wanikani application.
  final Preferences preferences;

  /// The URL to the user's public facing profile page.
  final String profileUrl;

  /// The signup date for the user.
  final DateTime startedAt;

  /// Details about the user's subscription state.
  final Subscription subscription;

  /// The user's username.
  final String username;
}

enum LessonsPresentationOrder {
  ascendingLevelThenSubject,
  shuffled,
  ascendingLevelThenShuffled,
}

class Preferences {
  const Preferences({
    required this.defaultVoiceActorId,
    required this.lessonsAutoplayAudio,
    required this.lessonsBatchSize,
    required this.lessonsPresentationOrder,
    required this.reviewsAutoplayAudio,
    required this.reviewsDisplaySrsIndicator,
  });

  /// The voice actor to be used for lessons and reviews. The value is associated to subject.pronunciation_audios.metadata.voice_actor_id.
  final int defaultVoiceActorId;

  /// Automatically play pronunciation audio for vocabulary during lessons.
  final bool lessonsAutoplayAudio;

  /// Number of subjects introduced to the user during lessons before quizzing.
  final int lessonsBatchSize;

  /// The order in which lessons are presented. The options are ascending_level_then_subject, shuffled,
  /// and ascending_level_then_shuffled. The default (and best experience) is ascending_level_then_subject.
  final LessonsPresentationOrder lessonsPresentationOrder;

  /// Automatically play pronunciation audio for vocabulary during reviews.
  final bool reviewsAutoplayAudio;

  /// Toggle for display SRS change indicator after a subject has been completely answered during review.
  final bool reviewsDisplaySrsIndicator;
}

class Subscription {
  const Subscription({
    required this.active,
    required this.maxLevelGranted,
    required this.periodEndsAt,
    required this.type,
  });

  /// Whether or not the user currently has a paid subscription.
  final bool active;

  /// The maximum level of content accessible to the user for lessons, reviews, and content review.
  /// For unsubscribed/free users, the maximum level is 3. For subscribed users, this is 60.
  /// Any application that uses data from the Wanikani API must respect these access limits.
  final int maxLevelGranted;

  /// The date when the user's subscription period ends. If the user has subscription type lifetime or free then the value is null.
  final DateTime? periodEndsAt;

  /// The type of subscription the user has. Options are following:
  final SubscriptionType type;
}
