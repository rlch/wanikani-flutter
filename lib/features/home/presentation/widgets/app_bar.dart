import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wanikani_flutter/core/domain/usecases/summary.dart';
import 'package:wanikani_flutter/features/home/domain/usecases/gravatar.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';
import 'package:wanikani_flutter/injection.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  static const appbarPadding = EdgeInsets.symmetric(vertical: 20, horizontal: 10);
  static const appbarInternalHeight = 40;

  @override
  Size get preferredSize => Size.fromHeight(appbarPadding.vertical + appbarInternalHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: appbarPadding,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffffffff).withOpacity(0.9),
            Color(0xfff2f2f2).withOpacity(0.9),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 3,
            spreadRadius: 3,
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(Assets.images.logos.appbarLogo.path, width: 125),
          const Spacer(),
          FutureBuilder<int>(
              future: gi<SummaryUseCases>().getCurrentReviewsNumber(),
              builder: (context, snap) {
                return _NumberedChip(
                  number: snap.data,
                  color: Theme.of(context).primaryColor,
                  label: 'Reviews',
                  onPressed: () {},
                );
              }),
          const SizedBox(width: 10),
          FutureBuilder<int>(
              future: gi<SummaryUseCases>().getCurrentLessonsNumber(),
              builder: (context, snap) {
                return _NumberedChip(
                  number: snap.data,
                  color: Theme.of(context).accentColor,
                  label: 'Lessons',
                  onPressed: () {},
                );
              }),
          const SizedBox(width: 10),
          FutureBuilder<ImageProvider>(
            future: gi<GravatarUseCases>().getImage('rjmbowie@gmail.com'),
            builder: (context, snap) {
              return Shimmer(
                enabled: !snap.hasData,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: snap.data,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NumberedChip extends StatelessWidget {
  const _NumberedChip({
    required this.label,
    required this.number,
    required this.color,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label;

  /// If null, then the chip is in a loading state.
  final int? number;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      label: Text(label),
      avatar: CircleAvatar(
        backgroundColor: color,
        child: FittedBox(
          child: Text(
            number.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
