import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:wanikani_flutter/features/home/presentation/pages/home_page.dart';
import 'package:wanikani_flutter/features/home/presentation/pages/knowledge_page.dart';
import 'package:wanikani_flutter/features/home/presentation/widgets/app_bar.dart';
import 'package:wanikani_flutter/features/home/presentation/widgets/custom_nav_bar/custom_nav_bar.dart';
import 'package:wanikani_flutter/features/home/presentation/widgets/custom_nav_bar/custom_nav_bar_item.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController pageController;

  int _currentIndex = 1;
  int get currentIndex => _currentIndex;
  set currentIndex(int currentIndex) {
    if (currentIndex == _currentIndex) return;
    pageController.animateToPage(
      _currentIndex = currentIndex,
      duration: 300.milliseconds,
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      bottomNavigationBar: CustomNavBar(
        height: 90,
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          CustomNavBarItem(
            label: 'Analytics',
            icon: Icon(Icons.equalizer),
            backgroundColor: Colors.blue,
          ),
          CustomNavBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
            backgroundColor: Colors.red,
          ),
          CustomNavBarItem(
            label: 'Knowledge',
            icon: Icon(Icons.auto_stories),
            backgroundColor: Colors.green,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.decoration.backgroundTexture.path),
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: PageView(
          controller: pageController,
          children: [
            HomePage(),
            HomePage(),
            KnowledgePage(),
          ],
        ),
      ),
    );
  }
}
