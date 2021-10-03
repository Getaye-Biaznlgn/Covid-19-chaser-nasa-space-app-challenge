import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    @required this.buttonName,
    @required this.onPressed,
    @required this.bgColor,
  });
  // : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 10 * 5.0,
        width: 1800,
        child: TextButton(
          onPressed: onPressed,
          child: Text(buttonName,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
      ),
    );
  }
}
