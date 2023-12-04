import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    color: title.toLowerCase() == "solidity" ||
                            title.toLowerCase() == "etherjs"
                        ? Colors.white
                        : Colors.transparent,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
          percentage: 0.96,
          title: 'Flutter',
          image: 'assets/icons/flutter.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.9, title: 'Dart', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.93,
            title: 'Responsive Design',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.94,
            title: 'Clean Architecture',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.93,
            title: 'Provider',
            image: 'assets/icons/bloc.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.76, title: 'MobX', image: 'assets/icons/bloc.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.91,
            title: 'Flutter Web3',
            image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.87,
            title: 'Firebase',
            image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.78, title: 'Prisma', image: 'assets/images/db.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.90, title: 'MySQL', image: 'assets/images/db.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.80, title: 'Postgres', image: 'assets/images/db.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.84, title: 'MongoDB', image: 'assets/images/db.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.93, title: 'MySQL', image: 'assets/images/db.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.90, title: 'Redis', image: 'assets/images/redis.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.96,
            title: 'JavaScript',
            image: 'assets/images/js2.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.95,
            title: 'ExpressJS',
            image: 'assets/images/js.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.95, title: 'NodeJS', image: 'assets/images/node.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.85,
            title: 'TypeScript',
            image: 'assets/images/ts2.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.95, title: 'EtherJS', image: 'assets/images/js.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.93,
            title: 'Solidity',
            image: 'assets/images/solidity.png'),
      ],
    );
  }
}
