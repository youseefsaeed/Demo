import 'package:design_figma/screens/App%20Onboarding/sessions_screen.dart';
import 'package:flutter/material.dart';
import '../../component/Backgound_image.dart';
import '../../component/Common_AppBar_title.dart';
import '../../component/appOnboarding_component/customized_Bubble.dart';
import '../../component/appOnboarding_component/next_Button.dart';
import '../../component/appOnboarding_component/note_text.dart';

class BubblesScreen extends StatefulWidget {
  static const String id = '4';
  const BubblesScreen({super.key});

  @override
  State<BubblesScreen> createState() => _BubblesScreenState();
}

class _BubblesScreenState extends State<BubblesScreen> {
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
                  fun: () {
                    Navigator.pop(context);
                  },
                  title: 'Topics You Find Interesting',
                  text: 'Tap the bubbles to add to your preference pool',
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width = constraints.maxWidth;
                      final double height = constraints.maxHeight;
                      return Stack(
                        children: [
                          Positioned(
                            left: width * 0.40966921119,
                            top: height * 0.00416666666,
                            right: width * 0.24681933842,
                            bottom: height * 0.71458333333,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/vr.png'),
                              text: 'Virtual\nReality (VR)',
                            ),
                          ),
                          Positioned(
                            left: width * 0.04325699745,
                            top: height * 0.10833333333,
                            right: width * 0.61323155216,
                            bottom: height * 0.61041666666,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/world.png'),
                              text: 'Internet of\nThings',
                            ),
                          ),
                          Positioned(
                            left: width * 0.36386768447,
                            top: height * 0.29583333333,
                            right: width * 0.29262086514,
                            bottom: height * 0.42291666666,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/film.png'),
                              text: 'Filmmaking',
                            ),
                          ),
                          Positioned(
                            left: width * 0.70737913486,
                            top: height * 0.19583333333,
                            bottom: height * 0.52291666666,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/music_prod.png'),
                              text: 'Music\nProduction',
                            ),
                          ),
                          Positioned(
                            top: height * 0.41875,
                            bottom: height * 0.3,
                            right: width * 0.62086513994,
                            left: width * 0.03562340966,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/ai.png'),
                              text: 'Artificial\nIntelligence',
                            ),
                          ),
                          Positioned(
                            top: height * 0.475,
                            bottom: height * 0.24375,
                            left: width * 0.82951653944,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/art.png'),
                              text: 'Modern Art',
                            ),
                          ),
                          Positioned(
                            top: height * 0.56875,
                            bottom: height * 0.15,
                            right: width * 0.17048346056,
                            left: width * 0.48600508905,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/gen_ai.png'),
                              text: 'Generative\nAI',
                            ),
                          ),
                          Positioned(
                            top: height * 0.69791666666,
                            bottom: height * 0.02083333333,
                            right: width * 0.48346055979,
                            left: width * 0.17302798982,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/brain.png'),
                              text: 'Large\nLanguage\nModels',
                            ),
                          ),
                          Positioned(
                            top: height * 0.76666666666,
                            left: width * 0.75318066157,
                            child: Customized_Bubble(
                              icon: const AssetImage('images/per_art.png'),
                              text: 'Performance\nArt',
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 43, right: 43, bottom: 12, top: 10),
                  child: Note_text(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Next_Button(
                    text: 'Next',
                    fun: () {
                      Navigator.pushNamed(context, SessionsScreen.id);
                    },
                    colurfortext: const Color(0xFFF7F4FE),
                    colurforcontainer: const Color(0xFF4832DB),
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
