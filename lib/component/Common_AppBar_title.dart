import 'package:design_figma/component/appOnboarding_component/skip_word.dart';
import 'package:flutter/material.dart';

class AppBar_Title extends StatelessWidget {
  String title;
  String text;
  void Function() fun;
  AppBar_Title({required this.title, required this.text, required this.fun});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 31),
            child: AppBar(
              actions: const [Skip_word()],
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Transform.translate(
                offset: const Offset(-20, 0),
                child: IconButton(
                  highlightColor: Colors.transparent,
                  onPressed: fun,
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF18243D),
              fontSize: 24,
              fontFamily: 'TestFoundersGroteskText',
              fontWeight: FontWeight.w700,
              height: 1.33333333333,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF2D4372),
              fontSize: 16,
              fontFamily: 'TestFoundersGroteskText',
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
