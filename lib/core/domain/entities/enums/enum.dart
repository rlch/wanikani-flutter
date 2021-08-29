abstract class IEnum<T> {
  const IEnum._(this.value);
  final T value;

  T toJson();
}
