import 'package:json_annotation/json_annotation.dart';
import 'package:wanikani_flutter/domain/entities/radical.dart';

import 'subject.dart';

part 'radical.g.dart';

@JsonSerializable()
class RadicalModel extends Radical implements SubjectModel {
  const RadicalModel({
    required this.auxiliaryMeanings,
    required this.characterImages,
    required this.meanings,
    required DateTime createdAt,
    required String documentUrl,
    required int lessonPosition,
    required int level,
    required String meaningMnemonic,
    required String slug,
    required int spacedRepetitionSystemId,
    required List<int> amalgamationSubjectIds,
    DateTime? hiddenAt,
    String? characters,
  }) : super(
          amalgamationSubjectIds: amalgamationSubjectIds,
          auxiliaryMeanings: auxiliaryMeanings,
          createdAt: createdAt,
          characters: characters,
          characterImages: characterImages,
          documentUrl: documentUrl,
          hiddenAt: hiddenAt,
          lessonPosition: lessonPosition,
          level: level,
          meaningMnemonic: meaningMnemonic,
          meanings: meanings,
          slug: slug,
          spacedRepetitionSystemId: spacedRepetitionSystemId,
        );

  @override
  final List<AuxiliaryMeaningModel> auxiliaryMeanings;
  @override
  final List<CharacterImageModel> characterImages;
  @override
  final List<MeaningModel> meanings;

  factory RadicalModel.fromJson(Map<String, dynamic> json) =>
      _$RadicalModelFromJson(json);
  Map<String, dynamic> toJson() => _$RadicalModelToJson(this);
}

class CharacterImageModel extends CharacterImage {
  const CharacterImageModel({
    required String url,
    required String contentType,
    required ICharacterImageModelMetadata metadata,
  }) : super(
          url: url,
          contentType: contentType,
          metadata: metadata,
        );

  factory CharacterImageModel.fromJson(Map<String, dynamic> json) {
    String? contentType;
    switch (contentType = json['content_type']) {
      case 'image/png':
        return CharacterImageModel(
          url: json['url'],
          contentType: contentType!,
          metadata: PngCharacterImageModelMetadata.fromJson(json['metadata']),
        );
      case 'image/svg+xml':
        return CharacterImageModel(
          url: json['url'],
          contentType: contentType!,
          metadata:
              SvgXmlCharacterImageModelMetadata.fromJson(json['metadata']),
        );
      default:
        throw Exception('Unknown contentType ${json['contentType']}');
    }
  }

  Map<String, dynamic> toJson() => {
        'url': url,
        'content_type': contentType,
        'metadata': metadata.toJson(),
      };
}

abstract class ICharacterImageModelMetadata extends ICharacterImageMetadata {
  Map<String, dynamic> toJson();
}

class SvgXmlCharacterImageModelMetadata extends SvgXmlCharacterImageMetadata
    implements ICharacterImageModelMetadata {
  const SvgXmlCharacterImageModelMetadata({required bool inlineStyles})
      : super(inlineStyles: inlineStyles);

  factory SvgXmlCharacterImageModelMetadata.fromJson(
          Map<String, dynamic> json) =>
      SvgXmlCharacterImageModelMetadata(inlineStyles: json['inline_styles']);

  @override
  Map<String, dynamic> toJson() => {'inline_styles': inlineStyles};
}

class PngCharacterImageModelMetadata extends PngCharacterImageMetadata
    implements ICharacterImageModelMetadata {
  const PngCharacterImageModelMetadata({
    required String color,
    required String dimensions,
    required String styleName,
  }) : super(
          color: color,
          dimensions: dimensions,
          styleName: styleName,
        );

  factory PngCharacterImageModelMetadata.fromJson(Map<String, dynamic> json) =>
      PngCharacterImageModelMetadata(
        color: json['color'],
        dimensions: json['dimensions'],
        styleName: json['style_name'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'color': color,
        'dimensions': dimensions,
        'style_name': styleName,
      };
}
