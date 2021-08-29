/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesDecorationGen get decoration =>
      const $AssetsImagesDecorationGen();
  $AssetsImagesLogosGen get logos => const $AssetsImagesLogosGen();
}

class $AssetsImagesDecorationGen {
  const $AssetsImagesDecorationGen();

  AssetGenImage get backgroundTexture =>
      const AssetGenImage('assets/images/decoration/background_texture.png');
  AssetGenImage get lessons =>
      const AssetGenImage('assets/images/decoration/lessons.png');
  AssetGenImage get noReviews =>
      const AssetGenImage('assets/images/decoration/no_reviews.png');
  AssetGenImage get reviews =>
      const AssetGenImage('assets/images/decoration/reviews.png');
}

class $AssetsImagesLogosGen {
  const $AssetsImagesLogosGen();

  AssetGenImage get appbarLogo =>
      const AssetGenImage('assets/images/logos/appbar_logo.png');
  AssetGenImage get appbarLogoWhite =>
      const AssetGenImage('assets/images/logos/appbar_logo_white.png');
  AssetGenImage get icon => const AssetGenImage('assets/images/logos/icon.jpg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
