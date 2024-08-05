import 'package:flutter/material.dart';

class Note_text extends StatelessWidget {
  const Note_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'This information will only be used to suggest you better sessions to attend during the event.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF9B9B9B),
        fontSize: 12,
        fontFamily: 'TestFoundersGroteskText',
        fontWeight: FontWeight.w400,
        height: 1.33333333333,
      ),
    );
  }
}
