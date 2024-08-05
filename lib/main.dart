import 'package:design_figma/screens/App%20Onboarding/bubbles_screen.dart';
import 'package:design_figma/screens/App%20Onboarding/finish_screen.dart';
import 'package:design_figma/screens/App%20Onboarding/goals_screen.dart';
import 'package:design_figma/screens/App%20Onboarding/london_exp_screen.dart';
import 'package:design_figma/screens/App%20Onboarding/sessions_screen.dart';
import 'package:design_figma/screens/sign%20in%20screens/signIn_screen.dart';
import 'package:design_figma/screens/sign%20in%20screens/starter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: StarterScreen.id,
      routes: {
        StarterScreen.id: (context) => StarterScreen(),
        SigninScreen.id: (context) => SigninScreen(),
        LondonExpScreen.id: (context) => const LondonExpScreen(),
        BubblesScreen.id: (context) => const BubblesScreen(),
        SessionsScreen.id: (context) => const SessionsScreen(),
        GoalsScreen.id: (context) => const GoalsScreen(),
        FinishScreen.id: (context) => const FinishScreen()
      },
    );
  }
}
