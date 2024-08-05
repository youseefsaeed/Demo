import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../component/Backgound_image.dart';
import '../../constants.dart';
import '../../component/signIn_component/signIn_Bottom.dart';
import '../App Onboarding/london_exp_screen.dart';

class SigninScreen extends StatefulWidget {
  static const String id = '2';
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool passwordController = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Background_Image(
          image: AssetImage('images/cover_signIn.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16, top: 31),
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        leading: Transform.translate(
                          offset: const Offset(-20, 0),
                          child: IconButton(
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              CupertinoIcons.back,
                              color: Color(0xFF253860),
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Image(
                          image: AssetImage(
                            'images/london_signIn.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Username',
                                style: Ktextabovetextfield,
                              ),
                            ),
                            TextField(
                                style: Kinputtextintextfield,
                                keyboardType: TextInputType.emailAddress,
                                decoration: Ktextfielddecoration),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: Ktextabovetextfield,
                                ),
                              ),
                              TextField(
                                style: Kinputtextintextfield,
                                obscureText: passwordController,
                                decoration: Ktextfielddecoration.copyWith(
                                  hintText: "Enter your password",
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordController =
                                            !passwordController;
                                      });
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.eye,
                                      color: Color(0xFFBCC3E6),
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color(0xFF102166),
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0.75),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        SignIn_Button_style(
                          fun: () {
                            Navigator.pushNamed(context, LondonExpScreen.id);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
