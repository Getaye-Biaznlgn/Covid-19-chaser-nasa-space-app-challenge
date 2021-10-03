import 'package:flutter/material.dart';

import './detail_screen.dart';
import '../main.dart';

class Transmission extends StatefulWidget {
  const Transmission({Key key}) : super(key: key);

  @override
  _TransmissionState createState() => _TransmissionState();
}

class _TransmissionState extends State<Transmission> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView(
        children: <Widget>[
          Column(children: [
            Image.asset(
              "assets/images/air_transmission.png",
              width: 150.0,
            ),
            const SizedBox(height: 8.0),
            const Text("Air Transmision",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0XFF0B0320),
                    fontWeight: FontWeight.w600)),
            const Text("Cough / Sneeze",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0XFF8C8A9A),
                )),
          ]),
          Column(children: [
            Image.asset(
              "assets/images/human_contact.png",
              width: 150,
            ),
            const SizedBox(height: 8.0),
            const Text("Human Contact",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0XFF0B0320),
                    fontWeight: FontWeight.w600)),
            const Text("Handshaking",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0XFF8C8A9A),
                )),
          ]),
          Column(children: [
            Image.asset(
              "assets/images/object_sustanse.png",
              width: 200.0,
            ),
            const SizedBox(height: 8.0),
            const Text("Object Sustanse",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0XFF0B0320),
                    fontWeight: FontWeight.w600)),
            const Text("Handshaking",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0XFF8C8A9A),
                )),
          ]),
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, '/third');
      },
    );
  }
}
   //     onTap: () {
  //Navigator.pushNamed(context, '/third');
//}