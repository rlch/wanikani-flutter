import 'package:json_annotation/json_annotation.dart';

part 'subscription_type.g.dart';

enum SubscriptionType {
  @JsonValue('free')
  free,
  @JsonValue('recurring')
  recurring,
  @JsonValue('lifetime')
  lifetime,
}
