import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/data/models/subject.dart';
import 'package:wanikani_flutter/domain/entities/kanji.dart';
import 'package:wanikani_flutter/domain/entities/reading.dart';

part 'kanji.g.dart';

@JsonSerializable()
class KanjiModel extends Kanji implements SubjectModel {
  const KanjiModel({
    required this.readings,
    required this.auxiliaryMeanings,
    required this.meanings,
    required List<int> amalgamationSubjectIds,
    required List<int> componentSubjectIds,
    required String readingMnemonic,
    required List<int> visuallySimilarSubjectIds,
    required DateTime createdAt,
    required String documentUrl,
    required DateTime? hiddenAt,
    required int lessonPosition,
    required int level,
    required String meaningMnemonic,
    required String slug,
    required int spacedRepetitionSystemId,
    String? meaningHint,
    String? readingHint,
  }) : super(
          readingMnemonic: readingMnemonic,
          readings: readings,
          amalgamationSubjectIds: amalgamationSubjectIds,
          componentSubjectIds: componentSubjectIds,
          meaningHint: meaningHint,
          readingHint: readingHint,
          visuallySimilarSubjectIds: visuallySimilarSubjectIds,
          auxiliaryMeanings: auxiliaryMeanings,
          createdAt: createdAt,
          documentUrl: documentUrl,
          hiddenAt: hiddenAt,
          lessonPosition: lessonPosition,
          level: level,
          meaningMnemonic: meaningMnemonic,
          meanings: meanings,
          slug: slug,
          spacedRepetitionSystemId: spacedRepetitionSystemId,
        );

  final List<KanjiReading> readings;
  final List<AuxiliaryMeaningModel> auxiliaryMeanings;
  final List<MeaningModel> meanings;

  factory KanjiModel.fromJson(Map<String, dynamic> json) =>
      _$KanjiModelFromJson(json);
  Map<String, dynamic> toJson() => _$KanjiModelToJson(this);
}
