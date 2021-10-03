import 'package:covid/models/consultant.dart';
import 'package:flutter/material.dart';
import '../style.dart';

class ConsultantDetail extends StatelessWidget {
  final Consultant consultant;
  ConsultantDetail({@required this.consultant});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.primaryColor,
        appBar: AppBar(
          title: Text(consultant.name+' '+consultant.lastName),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                consultant.imageUrl,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
              _contact(),
              Text(
                consultant.fieldOfSpecialisation,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white70),
              ),
              Text(
                consultant.country,
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
               'About   ' + consultant.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white70),
              ),
              Text(
                consultant.about,
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ));
  }

  Widget _contact() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _call('Voice Call', Colors.blueAccent, Icons.dialer_sip),
          SizedBox(width: 10),
          _call('Video Call', Colors.orangeAccent, Icons.video_call),
          SizedBox(width: 10),
          _call('Message', Colors.purpleAccent, Icons.message),
        ],
      ),
    );
  }

  Expanded _call(title, color, icon) {
    return Expanded(
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        onPressed: () {},
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
