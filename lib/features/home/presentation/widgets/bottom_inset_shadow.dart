import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomInsetShadow extends SingleChildRenderObjectWidget {
  const BottomInsetShadow({
    required Widget child,
    this.color = Colors.black26,
    this.height = 5,
    this.blur,
    Key? key,
  }) : super(key: key, child: child);

  final Color color;
  final double height;
  final double? blur;

  @override
  RenderObject createRenderObject(BuildContext context) {
    final _RenderBottomInsetShadow renderObject = _RenderBottomInsetShadow(
      blur: blur,
      color: color,
      height: height,
    );
    return renderObject;
  }

  @override
  void updateRenderObject(BuildContext context, _RenderBottomInsetShadow renderObject) {
    renderObject
      ..color = color
      ..blur = blur
      ..height = height;
  }
}

class _RenderBottomInsetShadow extends RenderProxyBox {
  _RenderBottomInsetShadow({
    required this.blur,
    required this.color,
    required this.height,
  });

  Color color;
  double height;
  double? blur;

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;

    final Rect rectOuter = offset & size;
    final Rect rectInner = Rect.fromLTWH(
      offset.dx,
      offset.dy + size.height - height,
      size.width - 1,
      height,
    );
    final Canvas canvas = context.canvas..saveLayer(rectOuter, Paint());
    context.paintChild(child!, offset);

    final Paint shadowPaint = Paint()
      ..blendMode = BlendMode.srcATop
      ..colorFilter = ColorFilter.mode(color, BlendMode.srcOut);
    if (blur != null) shadowPaint..imageFilter = ImageFilter.blur(sigmaX: blur!, sigmaY: blur!);

    canvas
      ..restore()
      ..saveLayer(rectInner, shadowPaint)
      ..translate(0, 200)
      ..restore();
  }
}
