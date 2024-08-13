// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.buttonTitle, required this.onTap});
  final String buttonTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        //better to be const so we change it once + not final cuz it is during compile time not runtime
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({required this.icon, required this.onOperation});
  final IconData icon;
  final VoidCallback onOperation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onOperation,
      shape: CircleBorder(),
      //elevation is disabled when we dont use the onPressed. so, use the disabledElevation
      // The elevation for the button's Material when the button is enabled but not pressed.
      elevation: 6.0,
      disabledElevation: 6.0,
      fillColor: Color(0XFF4C4F5E),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(icon),
    );
  }
}

