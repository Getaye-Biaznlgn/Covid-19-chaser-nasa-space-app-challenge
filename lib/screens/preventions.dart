import 'package:flutter/material.dart';
import '../core/consts.dart';

class Preventions extends StatefulWidget {
  const Preventions({Key key}) : super(key: key);

  @override
  _PreventionsState createState() => _PreventionsState();
}

class _PreventionsState extends State<Preventions> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildPrevention("assets/images/a10.png", "WASH", "hands often"),
        SizedBox(
          height: 10,
        ),
        _buildPrevention("assets/images/a4.png", "COVER", "your cough"),
        SizedBox(
          height: 10,
        ),
        _buildPrevention("assets/images/a6.png", "ALWAYS", "clean"),
        SizedBox(
          height: 10,
        ),
        _buildPrevention("assets/images/a9.png", "USE", "mask"),
      ],
    );
  }
}

Widget _buildPrevention(String path, String text1, String text2) {
  return Column(
    children: <Widget>[
      Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 1),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          children: <Widget>[
            Image.asset(path),
            SizedBox(width: 10),
            RichText(
              text: TextSpan(
                  text: "$text1\n",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ]),
            )
          ],
        ),
        margin: EdgeInsets.only(right: 20),
      ),
      SizedBox(height: 7),
    ],
  );
}
