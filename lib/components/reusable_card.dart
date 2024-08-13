import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color mainColor;
  final Widget? cardChild;
  final VoidCallback?
      onPress; // use this syntax if the parameter is not required
   const ReusableCard({super.key, 
    required this.mainColor,
    this.cardChild,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(10.0)),
        child: cardChild,
      ),
    );
  }
}
