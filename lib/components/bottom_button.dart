import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, @required this.onTab});

  final text;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBottomButtonText,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: kThemePinkColor,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
