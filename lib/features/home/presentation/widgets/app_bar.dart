import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(40);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffffffff).withOpacity(0.9),
            Color(0xfff2f2f2).withOpacity(0.9),
          ],
        ),
      ),
      child: Row(
        children: [
          Image.asset(Assets.images.logos.appbarLogo.path, width: 125),
          CircleAvatar(),
        ],
      ),
    );
  }
}
