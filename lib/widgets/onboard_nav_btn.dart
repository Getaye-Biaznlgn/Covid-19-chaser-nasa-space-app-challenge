import 'package:flutter/material.dart';

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({@required this.name, @required this.onPressed});
  // : super(key: key);
  final String name;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(5),
      splashColor: Colors.black12,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(4.0),
          ),
          Text(
            name,
          ),
        ],
      ),
    );
  }
}
