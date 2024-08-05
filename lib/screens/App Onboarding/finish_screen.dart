import 'package:flutter/material.dart';

import '../../component/Backgound_image.dart';
import '../../component/appOnboarding_component/next_Button.dart';

class FinishScreen extends StatefulWidget {
  static const String id = '7';
  const FinishScreen({super.key});

  @override
  State<FinishScreen> createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background_Image(
            image: const AssetImage('images/cover_london_exp.png'),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/done_icon.png'),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Ready to Roll!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF18243D),
                            fontSize: 20,
                            fontFamily: 'TestFoundersGroteskText',
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Start your SXSW journey hassle free with personalized recommendations for scheduled sessions right away.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF2D4372),
                            fontSize: 16,
                            fontFamily: 'TestFoundersGroteskText',
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                          ),
                        )
                      ],
                    ),
                  ),
                  Next_Button(
                    text: 'Done',
                    fun: () {},
                    colurfortext: const Color(0xFFF7F4FE),
                    colurforcontainer: const Color(0xFF4832DB),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
