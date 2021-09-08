part of 'custom_nav_bar.dart';

class _CustomNavBarTile extends StatefulWidget {
  const _CustomNavBarTile(
    this.item, {
    required this.onTap,
    required this.iconSize,
    required this.selected,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onTap;
  final CustomNavBarItem item;
  final double iconSize;
  final bool selected;

  @override
  __CustomNavBarTileState createState() => __CustomNavBarTileState();
}

class __CustomNavBarTileState extends State<_CustomNavBarTile> with AnimationMixin {
  late final Animation<double> opacity;
  late final Animation<Color?> color;
  late final Animation<Offset> position;

  static final _duration = 300.milliseconds;

  @override
  void initState() {
    opacity = 0.0.tweenTo(1.0).curved(Curves.easeInOutCubic).animatedBy(controller);
    color = Colors.black
        .tweenTo(widget.item.backgroundColor)
        .curved(Curves.easeInOutCubic)
        .animatedBy(controller);
    position =
        Offset(0, 0.5).tweenTo(Offset.zero).curved(Curves.easeInOutCubic).animatedBy(controller);
    if (widget.selected) controller.play(duration: _duration);
    super.initState();
  }

  @override
  void didUpdateWidget(_CustomNavBarTile oldWidget) {
    if (oldWidget.selected != widget.selected) {
      widget.selected
          ? controller.play(duration: _duration)
          : controller.playReverse(duration: _duration);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final effectiveColor =
        color.value ?? (widget.selected ? widget.item.backgroundColor : Colors.black);
    final icon = ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: widget.iconSize,
        height: widget.iconSize,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: widget.item.icon,
      ),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.onTap != null
            ? IconButton(
                onPressed: widget.onTap,
                icon: icon,
                color: effectiveColor,
              )
            : icon,
        FadeTransition(
          opacity: opacity,
          child: SlideTransition(
            position: position,
            child: Text(
              widget.item.label,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
