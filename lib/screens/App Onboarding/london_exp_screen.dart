import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../component/Backgound_image.dart';
import '../../component/appOnboarding_component/next_Button.dart';
import '../../component/appOnboarding_component/skip_word.dart';
import 'bubbles_screen.dart';

class LondonExpScreen extends StatefulWidget {
  static const String id = '3';
  const LondonExpScreen({super.key});

  @override
  State<LondonExpScreen> createState() => _LondonExpScreenState();
}

class _LondonExpScreenState extends State<LondonExpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background_Image(
          image: const AssetImage('images/cover_london_exp.png'),
        ),
        Background_Image(
          image: const AssetImage('images/london_exp.png'),
        ),
        Background_Image(
          image: const AssetImage('images/cover2_london_exp.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 16,
            top: 31,
            right: 20,
            left: 20,
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Text(''),
            actions: const [Skip_word()],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Personalise Your London Experience ',
                    style: TextStyle(
                      color: Color(0xFF18243D),
                      fontSize: 24,
                      fontFamily: 'TestFoundersGroteskText',
                      fontWeight: FontWeight.w700,
                      height: 1.33333333333,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'With over 2,000 sessions, tailor your schedule to get most immersed during London, just by answering a few questions.',
                    style: TextStyle(
                      color: Color(0xFF2D4372),
                      fontSize: 16,
                      fontFamily: 'TestFoundersGroteskText',
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Next_Button(
                    text: 'Let\'s Go',
                    fun: () {
                      Navigator.pushNamed(context, BubblesScreen.id);
                    },
                    colurforcontainer: const Color(0xFF4832DB),
                    colurfortext: const Color(0xFFF7F4FE),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
