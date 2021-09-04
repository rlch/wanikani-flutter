import 'subject.dart';

class Radical extends Subject {
  const Radical({
    required this.amalgamationSubjectIds,
    required this.characters,
    required this.characterImages,
    required List<AuxiliaryMeaning> auxiliaryMeanings,
    required DateTime createdAt,
    required String documentUrl,
    required DateTime? hiddenAt,
    required int lessonPosition,
    required int level,
    required String meaningMnemonic,
    required List<Meaning> meanings,
    required String slug,
    required int spacedRepetitionSystemId,
  }) : super(
          auxiliaryMeanings: auxiliaryMeanings,
          characters: characters,
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

  /// An array of numeric identifiers for the kanji that have the radical as a component.
  final List<int> amalgamationSubjectIds;

  /// Unlike kanji and vocabulary, radicals can have a null value for characters.
  /// Not all radicals have a UTF entry, so the radical must be visually represented with an image instead.
  final String? characters;

  /// A collection of images of the radical. See table below for the object structure.
  final List<CharacterImage> characterImages;
}

class CharacterImage {
  const CharacterImage({
    required this.url,
    required this.contentType,
    required this.metadata,
  });

  factory CharacterImage.fromJson(Map<String, dynamic> json) {
    String? contentType;
    switch (contentType = json['content_type']) {
      case 'image/png':
        return CharacterImage(
          url: json['url'],
          contentType: contentType!,
          metadata: PngCharacterImageMetadata.fromJson(json['metadata']),
        );
      case 'image/svg+xml':
        return CharacterImage(
          url: json['url'],
          contentType: contentType!,
          metadata: SvgXmlCharacterImageMetadata.fromJson(json['metadata']),
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

  /// The location of the image.
  final String url;

  /// The content type of the image. Currently the API delivers image/png and image/svg+xml.
  final String contentType;

  /// Details about the image. Each content_type returns a uniquely structured object.
  final ICharacterImageMetadata metadata;
}

abstract class ICharacterImageMetadata {
  Map<String, dynamic> toJson();
}

class SvgXmlCharacterImageMetadata implements ICharacterImageMetadata {
  const SvgXmlCharacterImageMetadata({required this.inlineStyles});

  factory SvgXmlCharacterImageMetadata.fromJson(Map<String, dynamic> json) =>
      SvgXmlCharacterImageMetadata(inlineStyles: json['inline_styles']);

  @override
  Map<String, dynamic> toJson() => {'inline_styles': inlineStyles};

  /// The SVG asset contains built-in CSS styling
  final bool inlineStyles;
}

class PngCharacterImageMetadata implements ICharacterImageMetadata {
  const PngCharacterImageMetadata({
    required this.color,
    required this.dimensions,
    required this.styleName,
  });

  factory PngCharacterImageMetadata.fromJson(Map<String, dynamic> json) =>
      PngCharacterImageMetadata(
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

  /// Color of the asset in hexadecimal
  final String color;

  /// Dimension of the asset in pixels
  final String dimensions;

  /// A name descriptor
  final String styleName;
}
