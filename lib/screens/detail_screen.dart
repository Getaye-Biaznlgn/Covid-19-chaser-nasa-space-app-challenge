import '../widget/button_square.dart';
import '../widget/container_symptom.dart';
import '../widget/text_center.dart';
import '../widget/text_form_search.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static const route = '/detail-screen';

  const DetailScreen({Key key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      child: Icon(Icons.arrow_back_ios, color: Colors.orange),
                      onTap: () => Navigator.pop(context),
                    ),
                    const Text(
                      "Transmission",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormSearch(),
            ),
            SizedBox(height: 32.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0)),
              ),
              child: Container(
                margin: EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                        child: Image.asset("assets/images/air_transmission.png",
                            width: 175.0)),
                    const SizedBox(height: 24.0),
                    const TextCenter(
                      title: "Air Transmision",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    const TextCenter(
                      title:
                          "The virus that causes COVID-19 is mainly is air transmitted through droplets generated on infected person coughs, sneezes. These are droplets are too heavy to hang in the air.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0XFF8C8A9A)),
                    ),
                    SizedBox(height: 24.0),
                    ButtonSquare(title: "Watch Video"),
                    SizedBox(height: 24),
                    Text(
                      "Also Spread By",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ContainerSymptom(
                            image: "assets/images/human_contact.png",
                            title: "Human Contact",
                            subtitle: "Handshaking"),
                        ContainerSymptom(
                            image: "assets/images/object_sustanse.png",
                            title: "Object & Sutanse",
                            subtitle: "Handshaking")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreenArgument {
  final String image;
  final String title;

  DetailScreenArgument(this.image, this.title);
}
