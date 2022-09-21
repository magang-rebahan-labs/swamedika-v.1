import 'package:flutter/material.dart';

import 'size_config.dart';

const Color kPrimaryColor = Color(0xffFC9D45);
const Color kSecondaryColor = Color.fromARGB(255, 18, 165, 70);
const Color kScaffoldBackground = Color(0xffFFF3E9);
const Color kTextColor = Color.fromARGB(255, 51, 51, 51);

const kStart = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    // fontSize: SizeConfig.blockSizeH! * 5,
    color: kScaffoldBackground,
    fontWeight: FontWeight.bold);

const kTitle = TextStyle(
    fontFamily: 'Klasik',
    fontSize: 36,
    // fontSize: SizeConfig.blockSizeH! * 8,
    color: kSecondaryColor,
    fontWeight: FontWeight.bold);

final kTitle2 = TextStyle(
  fontFamily: 'Klasik',
  fontSize: SizeConfig.blockSizeH! * 6,
  color: kSecondaryColor,
);

const kBodyText1 = TextStyle(
  color: kSecondaryColor,
  fontSize: 18,
  fontFamily: "Klasik",
  // fontSize: SizeConfig.blockSizeH! * 4.5,
  // fontWeight: FontWeight.bold,
);

final kBodyText2 = TextStyle(
  color: kSecondaryColor,
  fontSize: SizeConfig.blockSizeH! * 4,
  fontWeight: FontWeight.bold,
);

final kBodyText3 = TextStyle(
    color: kSecondaryColor,
    fontSize: SizeConfig.blockSizeH! * 3.8,
    fontWeight: FontWeight.normal);

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide.none,
);

final kInputHintStyle = kBodyText2.copyWith(
  fontWeight: FontWeight.normal,
  color: kSecondaryColor.withOpacity(0.5),
);
