import '../models/consultant.dart';
import 'package:flutter/material.dart';
import '../screens/consultants_detail.dart';
class ConsultancyTab extends StatelessWidget {
  final List<Consultant> nearByConsultants = Consultant.getConsultants();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Nearby Consultant',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
               SizedBox( height: 10,),
              _consultantCard(context,nearByConsultants),
            ],
          ),
        ),
        
        
        Expanded(  
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Specialist Consultant',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
               SizedBox( height: 10,),
              _consultantCard(context,nearByConsultants),
              SizedBox( height: 10,),
            ],
          ),
        ),
        
      ],
    );
  }

  Container _consultantCard( context,List<Consultant> consultants) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: consultants.length,
          itemBuilder: (ctx, index) => GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ConsultantDetail(consultant: nearByConsultants[index])));
                      },
                      child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            consultants[index].name +'\n'+consultants[index].lastName,
                            style: TextStyle( fontWeight: FontWeight.bold),
                          ),
                          Text('Experience\n'+consultants[index].yearOfExperience),
                          Text(consultants[index].fieldOfSpecialisation)
                        ],
                      ),
                      SizedBox(width: 10,),
                      Image.asset(
                        consultants[index].imageUrl,
                        height: MediaQuery.of(context).size.height * 0.2,
                      )
                    ],
                  ),
                ),
          )),
    );
  }
}
