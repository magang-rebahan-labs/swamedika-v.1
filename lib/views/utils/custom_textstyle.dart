import 'package:flutter/material.dart';
import 'size_config.dart';

const kJudul = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  fontFamily: "Sans-serif",
);

const kTitleBahan = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.bold,
  fontFamily: "Sans-serif",
);

const kNewsTitle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  fontFamily: "Sans-serif",
  color: Color(0xFF000000),
  height: 1.75,
);

const kNewsDate = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  fontFamily: "Sans-serif",
  color: Color(0xFF828282),
);

const kHomeTitle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.normal,
  fontFamily: "Poppins",
  color: Colors.white,
);

const kLabelHint = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontFamily: "Poppins",
  color: Color(0xFFC5C5C7),
);

const kEveryTitleDetail = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w400,
  fontFamily: "Poppins",
  color: Color(0xFF333333),
  height: 1.2,
);

const kTagDetail = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  fontFamily: "Poppins",
  color: Color(0xFF000000),
  height: 1.5,
);

final kEveryDataDetail = TextStyle(
  fontSize: 13,
  fontFamily: "Poppins",
  color: Colors.black.withOpacity(0.6),
  height: 1.2,
  fontStyle: FontStyle.normal,
);

final kTitleList = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  fontFamily: "Poppins",
  color: const Color(0xFF000000).withOpacity(0.4),
);

const kTitleAppBar = TextStyle(
  fontFamily: "Poppins",
  fontStyle: FontStyle.normal,
  fontSize: 20,
);

final kTitleScreen = TextStyle(
  fontSize: 40,
  fontFamily: "Poppins",
  fontWeight: FontWeight.w800,
  color: const Color(0xFF000000).withOpacity(0.6),
);

const kMoreTitle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  height: 3,
  fontFamily: "Poppins",
);

const kListTitleMore = TextStyle(
  fontSize: 18,
  color: Color(0xFF333333),
  fontFamily: "Poppins",
);

const kTextMore = TextStyle(
  fontSize: 15,
  height: 2.3,
  fontFamily: "Poppins",
);

const Color kPrimaryColor = Color(0xffFC9D45);
const Color kSecondaryColor = Color.fromARGB(255, 18, 165, 70);
const Color kScaffoldBackground = Color(0xffFFF3E9);
const Color kTextColor = Color.fromARGB(255, 51, 51, 51);

const kStart = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 18,
  // fontSize: SizeConfig.blockSizeH! * 5,
  color: kScaffoldBackground,
  // fontWeight: FontWeight.bold,
);

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
