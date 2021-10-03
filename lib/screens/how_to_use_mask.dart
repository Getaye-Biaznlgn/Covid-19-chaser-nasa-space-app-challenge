import 'package:flutter/material.dart';

class HowToUseMask extends StatefulWidget {
  const HowToUseMask({Key key}) : super(key: key);

  @override
  _HowToUseMaskState createState() => _HowToUseMaskState();
}

class _HowToUseMaskState extends State<HowToUseMask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(children: [
          Image.asset(
            "assets/images/air_transmission.png",
            width: 92.0,
          ),
          const SizedBox(height: 8.0),
          const Text("Air Transmision",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF0B0320),
                  fontWeight: FontWeight.w600)),
          const Text("Cough / Sneeze",
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0XFF8C8A9A),
              )),
        ]),
        Column(children: [
          Image.asset(
            "assets/images/air_transmission.png",
            width: 92.0,
          ),
          const SizedBox(height: 8.0),
          const Text("Air Transmision",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF0B0320),
                  fontWeight: FontWeight.w600)),
          const Text("Cough / Sneeze",
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0XFF8C8A9A),
              )),
        ]),
        Column(children: [
          Image.asset(
            "assets/images/air_transmission.png",
            width: 92.0,
          ),
          const SizedBox(height: 8.0),
          const Text("Air Transmision",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF0B0320),
                  fontWeight: FontWeight.w600)),
          const Text("Cough / Sneeze",
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0XFF8C8A9A),
              )),
        ]),
      ],
    );
  }
}
