part of 'custom_nav_bar.dart';

class _CustomNavBarIndicator extends StatelessWidget {
  const _CustomNavBarIndicator({required this.color, Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
        color: color,
      ),
    );
  }
}
