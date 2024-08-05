import 'package:design_figma/screens/sign%20in%20screens/signIn_screen.dart';
import 'package:flutter/material.dart';
import '../../component/Backgound_image.dart';
import '../../component/signIn_component/signIn_Bottom.dart';

class StarterScreen extends StatefulWidget {
  static const String id = '1';
  @override
  State<StarterScreen> createState() => _StarterScreenState();
}

class _StarterScreenState extends State<StarterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background_Image(
          image: const AssetImage('images/frame.png'),
        ),
        Background_Image(
          image: const AssetImage('images/mask_group.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final double screenheight = constraints.maxHeight;
              return Column(
                children: [
                  const Expanded(
                    child: Text(''),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('images/london.png'),
                        ),
                        SizedBox(
                          height: screenheight * 0.27390791027,
                        ),
                        SignIn_Button_style(
                          fun: () {
                            Navigator.pushNamed(context, SigninScreen.id);
                          },
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account? ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  height: 1.5,
                                  fontFamily: 'TestFoundersGroteskText',
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Create account',
                              style: TextStyle(
                                  color: Color(0xFF102166),
                                  fontSize: 16,
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}
