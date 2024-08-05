import 'package:flutter/material.dart';

import '../../component/Backgound_image.dart';
import '../../component/Common_AppBar_title.dart';
import '../../component/appOnboarding_component/customized_Card.dart';
import '../../component/appOnboarding_component/next_Button.dart';
import '../../component/appOnboarding_component/note_text.dart';
import 'finish_screen.dart';

class GoalsScreen extends StatefulWidget {
  static const String id = '6';
  const GoalsScreen({super.key});

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background_Image(
            image: const AssetImage('images/cover_london_exp.png'),
          ),
          SafeArea(
            child: Column(
              children: [
                AppBar_Title(
                  title: 'What Are Your Goals at SXSW',
                  text: 'Tap the bubbles to add to your preference pool',
                  fun: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        final double screenHeight = constraints.maxHeight;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Image(
                              image: AssetImage('images/shadow_icon.png'),
                            ),
                            SizedBox(
                              height: screenHeight * 0.14503816793,
                            ),
                            Customized_Card(
                              text: 'Get Inspired',
                              icon: const AssetImage('images/star_icon.png'),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Customized_Card(
                              text: 'Meet New People',
                              icon: const AssetImage('images/people_icon.png'),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Customized_Card(
                              text: 'Find Opportunities',
                              icon: const AssetImage('images/find_icon.png'),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Customized_Card(
                              text: 'Get Immersed',
                              icon: const AssetImage('images/imm_icon.png'),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 43, right: 43, bottom: 12, top: 23),
                  child: Note_text(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Next_Button(
                          colurfortext: const Color(0xFF102166),
                          colurforcontainer: const Color(0xFFA9BAFF),
                          text: 'Back',
                          fun: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Next_Button(
                          colurforcontainer: const Color(0xFF4832DB),
                          colurfortext: const Color(0xFFF7F4FE),
                          text: 'Next',
                          fun: () {
                            Navigator.pushNamed(context, FinishScreen.id);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
