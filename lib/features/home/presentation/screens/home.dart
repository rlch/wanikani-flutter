import 'package:flutter/material.dart';
import 'package:wanikani_flutter/features/home/presentation/widgets/app_bar.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.decoration.backgroundTexture.path),
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
