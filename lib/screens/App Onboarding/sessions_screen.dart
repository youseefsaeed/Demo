import 'package:flutter/material.dart';
import '../../component/Backgound_image.dart';
import '../../component/Common_AppBar_title.dart';
import '../../component/appOnboarding_component/customized_Card.dart';
import '../../component/appOnboarding_component/next_Button.dart';
import '../../component/appOnboarding_component/note_text.dart';
import 'goals_screen.dart';

class SessionsScreen extends StatefulWidget {
  static const String id = '5';
  const SessionsScreen({super.key});

  @override
  State<SessionsScreen> createState() => _SessionsScreenState();
}

class _SessionsScreenState extends State<SessionsScreen> {
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
                  title: 'What Type of Sessions Do You Enjoy Most',
                  text: 'Pick as many as you like',
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 33),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Customized_Card(
                          text: 'Technology',
                          icon: const AssetImage('images/microchip_icon.png'),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Customized_Card(
                          text: 'Music',
                          icon: const AssetImage('images/music_icon.png'),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Customized_Card(
                          text: 'Movies',
                          icon: const AssetImage('images/movie_icon.png'),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Customized_Card(
                          text: 'Gaming',
                          icon: const AssetImage('images/gaming_icon.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 43,
                    right: 43,
                    bottom: 12,
                  ),
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
                            Navigator.pushNamed(context, GoalsScreen.id);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
