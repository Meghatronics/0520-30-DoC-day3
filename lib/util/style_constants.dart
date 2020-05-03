import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double kNewsScrollCardHeight = 250;
const double kNavigationBarHeight = 60;
const TextOverflow kNewsScrollCardBodyOverflow = TextOverflow.fade;
const int kNewsScrollCardBodyMaxLines = 7;
//Colors
const Color kGradientColor1 = Color(0xff1B1C32);
const Color kGradientColor2 = Color(0xff08A1A6);

const Color kTransparentIconColor = Colors.white60;
const Color kNewsScrollCardForeColor = Color(0xaaffffff);
const Color kNewsScrollCardShadowColor = Color(0x30000000);
const Color kNavigationButtonActiveIconColor = Color(0x80000000);
const Color kNavigationButtonActiveTextColor = Color(0x80000000);
const Color kNavigationButtonInactiveIconColor = Color(0x30000000);
const Color kNavigationButtonInactiveTextColor = Color(0x30000000);

//Text Styles
final kHeadingTextStyle = GoogleFonts.quicksand(
  letterSpacing: 3,
  fontSize: 25,
  color: Colors.white,
);

const kSearchBarTextStyle = TextStyle(
  fontSize: 17,
  color: kTransparentIconColor,
);

final kNewsScrollCardHeadlineStyle = GoogleFonts.quicksand(
  letterSpacing: 0,
  fontSize: 25,
  color: Colors.black87,
);

final kNewsScrollCardBodyStyle = GoogleFonts.quicksand(
  letterSpacing: 0,
  fontSize: 15,
  color: Colors.black54,
);

final kNewsScrollCardDateStyle = GoogleFonts.quicksand(
  letterSpacing: 0,
  fontSize: 17,
  color: Colors.black54,
);

//
