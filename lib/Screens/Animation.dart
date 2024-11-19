import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimationQ extends StatelessWidget {
  const AnimationQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationScreen"),
      ),
      body: Row(
        children: [
          FadeInLeft(
              child: Icon(
            Icons.search,
            color: Colors.black,
            size: 50,
          )),
          FadeInUp(
              child: Icon(
            Icons.safety_check,
            color: Colors.black,
            size: 50,
          )),
          FadeInDown(
              child: Icon(
            Icons.dashboard,
            color: Colors.black,
            size: 50,
          )),
          FadeInRight(
              child: Icon(
            Icons.shield,
            color: Colors.black,
            size: 50,
          )),
        ],
      ),
    );
  }
}
