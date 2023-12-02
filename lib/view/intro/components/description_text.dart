import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          ///'I\'m skilled in creating top-notch Software from start to finish.\nMy skills cover Mobile, Blockchain, Web3 and Backend development',
          'I\'m capable of creating top-notch software application${Responsive.isLargeMobile(context) ? '\n' : ' '}handling every step from ${!Responsive.isLargeMobile(context) ? '\n' : ''}concept to deployment.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
// //
// I skilled in creating top-notch mobile apps from start to finish. My skills cover Flutter (Dart), mobile and backend development, Node.js (JavaScript), blockchain, Solidity, and Web3 (Flutter Web3)