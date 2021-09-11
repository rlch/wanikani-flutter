import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:wanikani_flutter/core/presentation/theme/theme.dart';
import 'package:wanikani_flutter/features/home/presentation/widgets/custom_nav_bar/custom_nav_bar_item.dart';

part 'custom_nav_bar_tile.dart';
part 'custom_nav_bar_indicator.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    required this.items,
    this.height = 100,
    this.onTap,
    this.currentIndex = 0,
    this.iconSize = 24.0,
    this.indicatorWidth = 100,
    this.indicatorHeight = 6.0,
    this.style,
    Key? key,
  }) : super(key: key);

  final List<CustomNavBarItem> items;
  final double height;
  final ValueChanged<int>? onTap;
  final int currentIndex;
  final double iconSize;

  /// Horizontal padding on [_CustomNavBarIndicator]
  final double indicatorWidth;
  final double indicatorHeight;
  final TextStyle? style;

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> with AnimationMixin {
  Animation<double>? interpolatedIndex;
  Animation<Color?>? interpolatedColor;

  @override
  void didUpdateWidget(CustomNavBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    late final int newIndex = widget.currentIndex, oldIndex = oldWidget.currentIndex;
    if (newIndex != oldIndex) {
      interpolatedIndex = (interpolatedIndex?.value ?? oldIndex)
          .toDouble()
          .tweenTo(newIndex.toDouble())
          .curved(Curves.easeInOutCubic)
          .animatedBy(controller);

      Color getColor(int i) => widget.items[i].backgroundColor;
      interpolatedColor = (interpolatedColor?.value ?? getColor(oldIndex))
          .tweenTo(getColor(newIndex))
          .curved(Curves.easeInOutCubic)
          .animatedBy(controller);

      controller.reset();
      controller.play(duration: 350.milliseconds);
    }
  }

  /// static const indicatorId = 'indicator';

  @override
  Widget build(BuildContext context) {
    final childCount = widget.items.length;
    final currentItem = widget.items[widget.currentIndex];
    final effectiveTextStyle = widget.style ?? Theme.of(context).textTheme.caption ?? TextStyle();
    final effectiveColor = interpolatedColor?.value ?? currentItem.backgroundColor;

    return DefaultTextStyle(
      style: effectiveTextStyle,
      child: Container(
        height: widget.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: WanikaniTheme.appBarGradient(context, flipped: true),
          boxShadow: WanikaniTheme.appBarBoxShadow(context),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          final childWidth = constraints.maxWidth / childCount;
          final childHeight = constraints.maxHeight;
          final effectiveIndicatorPosition = (childWidth - widget.indicatorWidth) / 2 +
              (interpolatedIndex?.value ?? widget.currentIndex) * childWidth;
          final effectiveIndicatorWidth = min(widget.indicatorWidth, childWidth);

          return Stack(
            children: [
              for (int i = 0; i < childCount; i++)
                Positioned(
                  left: i * childWidth,
                  width: childWidth,
                  height: childHeight,
                  child: Center(
                    child: _CustomNavBarTile(
                      widget.items[i],
                      selectedIconSize: widget.iconSize + 3,
                      iconSize: widget.iconSize,
                      selected: widget.currentIndex == i,
                      onTap: widget.onTap == null ? null : () => widget.onTap!(i),
                    ),
                  ),
                ),
              Positioned(
                top: 0,
                left: effectiveIndicatorPosition,
                width: effectiveIndicatorWidth,
                height: widget.indicatorHeight,
                child: _CustomNavBarIndicator(
                  color: effectiveColor,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

/// Commented out in favour of a more efficient solution.
/// class _CustomNavBarMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
///   _CustomNavBarMultiChildLayoutDelegate({
///     required this.childCount,
///     required this.interpolatedIndex,
///     required this.currentIndex,
///     required this.indicatorSpacing,
///   });

///   final int childCount;
///   final int currentIndex;
///   final double? interpolatedIndex;
///   final double indicatorSpacing;

///   @override
///   void performLayout(Size size) {
///     final double width = size.width, height = size.height;
    /// final double childWidth = width / childCount;

///     for (int i = 0; i < childCount; i++) {
///       if (hasChild(i)) {
///         positionChild(i, Offset(i * width / childCount, 0));
///         layoutChild(i, BoxConstraints.tightFor(width: childWidth, height: height));
///       }
///     }

///     final id = _CustomNavBarState.indicatorId;
///     if (hasChild(id)) {
///       final effectivePosition =
///           indicatorSpacing / 2 + childWidth * (interpolatedIndex ?? currentIndex);
///       positionChild(id, Offset(effectivePosition, 0));
///       layoutChild(id, BoxConstraints.tightFor(width: childWidth - indicatorSpacing, height: 5));
///     }
///   }

///   @override
///   bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
///     return oldDelegate is _CustomNavBarMultiChildLayoutDelegate &&
///         (oldDelegate.childCount != childCount ||
///             oldDelegate.currentIndex != currentIndex ||
///             oldDelegate.interpolatedIndex != interpolatedIndex);
///   }
/// }
