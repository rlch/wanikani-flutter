import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanikani_flutter/core/domain/usecases/summary.dart';
import 'package:wanikani_flutter/core/presentation/theme/theme.dart';
import 'package:wanikani_flutter/core/utils/extensions/color_x.dart';
import 'package:wanikani_flutter/features/home/domain/usecases/gravatar.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';
import 'package:wanikani_flutter/injection.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  static const appbarPadding = EdgeInsets.symmetric(vertical: 20, horizontal: 10);
  static const appbarInternalHeight = 40;

  @override
  Size get preferredSize => Size.fromHeight(appbarPadding.vertical + appbarInternalHeight);

  @override
  Widget build(BuildContext context, watch) {
    final summaryUC = gi<SummaryUseCases>();

    return Container(
      padding: appbarPadding,
      decoration: BoxDecoration(
        gradient: WanikaniTheme.appBarGradient(context),
        boxShadow: WanikaniTheme.appBarBoxShadow(context),
      ),
      child: Row(
        children: [
          Image.asset(Assets.images.logos.appbarLogo.path, width: 125),
          const Spacer(),
          FutureBuilder<int>(
              future: summaryUC.getCurrentLessonsNumber(),
              builder: (context, snapshot) {
                return _NumberedChip(
                  number: snapshot.data,
                  color: Theme.of(context).primaryColor,
                  label: 'Lessons',
                  onPressed: () {},
                );
              }),
          const SizedBox(width: 10),
          FutureBuilder<int>(
              future: summaryUC.getCurrentReviewsNumber(),
              builder: (context, snapshot) {
                return _NumberedChip(
                  number: snapshot.data,
                  color: Theme.of(context).accentColor,
                  label: 'Reviews',
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
    return Container(
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        shadows: [
          BoxShadow(
            color: color.darken(15),
            offset: Offset(0, 3),
          )
        ],
      ),
      child: ActionChip(
        pressElevation: 0,
        backgroundColor: color,
        labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        label: Text(number.toString()),

        /// avatar: CircleAvatar(
        ///   backgroundColor: color,
        ///   child: FittedBox(
        ///     child: Text(
        ///       number.toString(),
        ///       style: TextStyle(color: Colors.white),
        ///     ),
        ///   ),
        /// ),
        onPressed: onPressed,
      ),
    );
  }
}
