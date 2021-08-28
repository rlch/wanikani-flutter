import 'package:sembast/sembast.dart';

abstract class ICustomFilter<K, V> {
  bool call(RecordSnapshot<K, V> record);
}
