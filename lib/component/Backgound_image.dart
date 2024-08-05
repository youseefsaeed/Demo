import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background_Image extends StatelessWidget {
  AssetImage image;
  Background_Image({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
