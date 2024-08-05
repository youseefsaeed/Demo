import 'package:flutter/material.dart';

class Next_Button extends StatelessWidget {
  void Function() fun;
  String text;
  Color colurfortext;
  Color colurforcontainer;
  Next_Button(
      {required this.text,
      required this.fun,
      required this.colurfortext,
      required this.colurforcontainer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
            color: colurforcontainer, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: colurfortext,
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1.5),
          ),
        ),
      ),
    );
  }
}
