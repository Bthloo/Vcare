import 'package:flutter/material.dart';

import '../ColorHelper.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;

  const MainButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorHelper.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            )),
        child: Text(
          text,
        ),
      ),
    );
  }
}
