import 'package:flutter/material.dart';
import '../utils/app_style.dart';
import '../utils/size_config.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
    required this.borderColor,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: SizeConfig.blockSizeH! * 15.5,
        width: SizeConfig.blockSizeV! * 35,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            elevation: 3,
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(color: borderColor),
            ),
          ),
          child: Text(
            buttonName,
            style: kStart,
          ),
        ),
      ),
    );
  }
}
