import 'package:flutter/material.dart';

const Ktextfielddecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    border: OutlineInputBorder(
      gapPadding: 3,
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      gapPadding: 3,
      borderSide: BorderSide(color: Color(0xFFE4E6F5), width: 1.0),
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      gapPadding: 3,
      borderSide: BorderSide(color: Color(0xFFE4E6F5), width: 1.0),
      borderRadius: BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
    hintText: 'Enter your username',
    hintStyle: TextStyle(
      color: Color(0xFF9AA6DA),
      fontSize: 14,
      height: 1.42857142857,
      fontWeight: FontWeight.w400,
      fontFamily: 'TestFoundersGroteskText',
    ),
    filled: true,
    fillColor: Colors.white,
    suffixIcon: null);

const Ktextabovetextfield = TextStyle(
    color: Color(0xFF1F263B),
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    fontFamily: 'TestFoundersGroteskText');
const Kinputtextintextfield = TextStyle(
    color: Color(0xFF2D4372),
    fontSize: 14,
    fontFamily: 'TestFoundersGroteskText',
    fontWeight: FontWeight.w400,
    height: 0.7);
