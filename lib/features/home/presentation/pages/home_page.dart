import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wanikani_flutter/core/domain/usecases/summary.dart';
import 'package:wanikani_flutter/core/utils/extensions/color_x.dart';
import 'package:wanikani_flutter/gen/assets.gen.dart';
import 'package:wanikani_flutter/injection.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final summaryUC = gi<SummaryUseCases>();

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          FutureBuilder<int>(
            future: summaryUC.getCurrentLessonsNumber(),
            builder: (context, snapshot) {
              return _HomePageCard(
                label: 'Lessons',
                number: snapshot.data,
                color: Theme.of(context).primaryColor,
                image: AssetImage(Assets.images.decoration.lessons.path),
              );
            },
          ),
          const SizedBox(height: 15),
          FutureBuilder<int>(
            future: summaryUC.getCurrentReviewsNumber(),
            builder: (context, snapshot) {
              return _HomePageCard(
                label: 'Reviews',
                number: snapshot.data,
                color: Theme.of(context).accentColor,
                image: AssetImage(Assets.images.decoration.reviews.path),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _HomePageCard extends StatelessWidget {
  const _HomePageCard({
    required this.label,
    required this.number,
    required this.color,
    required this.image,
    Key? key,
  }) : super(key: key);

  final String label;
  final int? number;
  final Color color;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: color.darken(20),
            offset: Offset(0, 3),
          ),
        ],
        color: color,
        image: DecorationImage(
          image: image,
          fit: BoxFit.fitWidth,
        ),
      ),
      alignment: Alignment.bottomLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: StadiumBorder(),
            ),
            child: Text(
              number.toString(),
              style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
