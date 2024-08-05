import 'package:flutter/material.dart';

class Customized_Bubble extends StatelessWidget {
  String text;
  AssetImage icon;
  Customized_Bubble({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 135,
        height: 135,
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.20000000298023224),
          shape: const OvalBorder(),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: icon),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF989898),
                fontSize: 16,
                fontFamily: 'TestFoundersGroteskText',
                fontWeight: FontWeight.w700,
                height: 1.27,
              ),
            )
          ],
        ),
      ),
    );
  }
}
