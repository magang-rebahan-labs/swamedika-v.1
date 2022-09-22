import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class DottedLineWidget extends StatelessWidget {
  const DottedLineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 19.374,
      width: MediaQuery.of(context).size.width,
      child: const DottedLine(
        direction: Axis.horizontal,
        lineLength: double.infinity,
        lineThickness: 2,
        dashLength: 4.0,
        dashColor: Colors.grey,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
      ),
    );
  }
}
