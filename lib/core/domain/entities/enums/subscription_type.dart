import 'enum.dart';

const _free = 'free';
const _recurring = 'recurring';
const _lifetime = 'lifetime';

class SubscriptionType implements IEnum<String> {
  const SubscriptionType._(this.value);
  final String value;

  static const SubscriptionType free = SubscriptionType._(_free);
  static const SubscriptionType recurring = SubscriptionType._(_recurring);
  static const SubscriptionType lifetime = SubscriptionType._(_lifetime);

  String toJson() => this.value;
  factory SubscriptionType.fromJson(String json) =>
      {_free: free, _recurring: recurring, _lifetime: lifetime}[json]!;
}
