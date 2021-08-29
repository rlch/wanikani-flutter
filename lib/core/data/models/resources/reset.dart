import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/data/models/model.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/reset.dart';

part 'reset.g.dart';

@JsonSerializable()
class ResetModel extends Reset with IModel {
  ResetModel({
    required DateTime createdAt,
    required int originalLevel,
    required int targetLevel,
    DateTime? confirmedAt,
  }) : super(
          createdAt: createdAt,
          originalLevel: originalLevel,
          targetLevel: targetLevel,
          confirmedAt: confirmedAt,
        );

  factory ResetModel.fromJson(Map<String, dynamic> json) =>
      _$ResetModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResetModelToJson(this);
}
