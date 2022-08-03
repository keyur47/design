// import 'package:flutter/material.dart';
// import 'package:simple_animations/stateless_animation/play_animation.dart';
//
// class FadeAnimation extends StatelessWidget {
//   final double delay;
//   final Widget child;
//
//   FadeAnimation(this.delay, this.child);
//
//   @override
//   Widget build(BuildContext context) {
//     return PlayAnimation<double>(
//         delay: Duration(milliseconds: (500 * delay).round()),
//         tween: Tween(begin: 50.0, end: 200.0),
//         duration: const Duration(seconds: 5),
//         child: child,
//         // specify child widget
//         builder: (context, child, value) {
//           return Container(
//             width: value,
//             // apply animated value from builder function parameter
//             height: value,
//             color: Colors.transparent,
//           );
//         });
//   }
// }
