import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/core/domain/entities/enums/subject_type.dart';
import 'package:wanikani_flutter/core/domain/entities/resources/subject.dart';

import '../model.dart';
import 'kanji.dart';
import 'radical.dart';
import 'vocabulary.dart';

part 'subject.g.dart';

abstract class SubjectModel extends Subject with IModel {
  SubjectModel({
    required this.auxiliaryMeanings,
    required this.meanings,
    required String characters,
    required DateTime createdAt,
    required String documentUrl,
    required int lessonPosition,
    required int level,
    required String meaningMnemonic,
    required String slug,
    required int spacedRepetitionSystemId,
    required SubjectType type,
    DateTime? hiddenAt,
  }) : super(
          auxiliaryMeanings: auxiliaryMeanings,
          characters: characters,
          createdAt: createdAt,
          documentUrl: documentUrl,
          lessonPosition: lessonPosition,
          level: level,
          meaningMnemonic: meaningMnemonic,
          meanings: meanings,
          slug: slug,
          hiddenAt: hiddenAt,
          spacedRepetitionSystemId: spacedRepetitionSystemId,
          type: type,
        );

  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    switch (json['object']) {
      case 'kanji':
        return KanjiModel.fromJson(json);
      case 'radical':
        return RadicalModel.fromJson(json);
      case 'vocabulary':
        print('Serializing vocabulary');
        return VocabularyModel.fromJson(json);
      default:
        throw Exception('Attempted to parse invalid subject ${json['object']}.');
    }
  }

  Map<String, dynamic> toJson();

  @override
  final List<MeaningModel> meanings;
  @override
  final List<AuxiliaryMeaningModel> auxiliaryMeanings;
}

@JsonSerializable()
class MeaningModel extends Meaning {
  const MeaningModel({
    required String meaning,
    required bool primary,
    required bool acceptedAnswer,
  }) : super(
          meaning: meaning,
          primary: primary,
          acceptedAnswer: acceptedAnswer,
        );

  factory MeaningModel.fromJson(Map<String, dynamic> json) => _$MeaningModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeaningModelToJson(this);
}

@JsonSerializable()
class AuxiliaryMeaningModel extends AuxiliaryMeaning {
  const AuxiliaryMeaningModel({
    required String meaning,
    required AuxiliaryMeaningType type,
  }) : super(meaning: meaning, type: type);

  factory AuxiliaryMeaningModel.fromJson(Map<String, dynamic> json) =>
      _$AuxiliaryMeaningModelFromJson(json);
  Map<String, dynamic> toJson() => _$AuxiliaryMeaningModelToJson(this);
}
