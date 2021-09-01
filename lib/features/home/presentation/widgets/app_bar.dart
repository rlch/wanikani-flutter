import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wanikani_flutter/features/home/domain/usecases/get_gravatar.dart';
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
          FutureBuilder<ImageProvider>(
            future: gi<GetGravatar>()('rjmbowie@gmail.com'),
            builder: (context, data) {
              return Shimmer(
                enabled: !data.hasData,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: data.data,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
