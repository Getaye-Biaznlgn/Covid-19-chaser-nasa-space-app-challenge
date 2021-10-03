import '../screens/education_page.dart';
import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  final String title;
  const ButtonSquare({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0XFFEB6765),
            borderRadius: BorderRadius.circular(50.0)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/second');
      },
      borderRadius: BorderRadius.circular(50.0),
    );
  }
}
