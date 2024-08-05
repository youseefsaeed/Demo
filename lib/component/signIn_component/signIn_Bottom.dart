import 'package:flutter/material.dart';

class SignIn_Button_style extends StatelessWidget {
  void Function() fun;
  SignIn_Button_style({required this.fun});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF4832DB),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              wordSpacing: 1,
              color: Color(0xFFF7F4FE),
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
