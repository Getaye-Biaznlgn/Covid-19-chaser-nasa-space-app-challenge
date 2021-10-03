import 'package:flutter/material.dart';
import '../core/consts.dart';

class Symptom extends StatefulWidget {
  const Symptom({Key key}) : super(key: key);

  @override
  _SymptomState createState() => _SymptomState();
}

class _SymptomState extends State<Symptom> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildSymptomItem("assets/images/1.png", "Fever"),
        _buildSymptomItem("assets/images/2.png", "Dry Cough"),
        _buildSymptomItem("assets/images/3.png", "Headache"),
        _buildSymptomItem("assets/images/4.png", "Breathless"),
      ],
    );
  }
}

Widget _buildSymptomItem(String path, String text) {
  return Column(
    children: <Widget>[
      Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.backgroundColor,
              Colors.orange.shade400,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          border: Border.all(color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 1),
              spreadRadius: 1,
              blurRadius: 3,
            )
          ],
        ),
        padding: EdgeInsets.only(top: 15),
        child: Image.asset(path),
        margin: EdgeInsets.only(right: 20),
      ),
      SizedBox(height: 7),
      Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
