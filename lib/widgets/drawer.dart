import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child:Image.asset('assets/images/doctor-1.jpg')
            
          ),
             ListTile(
              title: Text('Vaccination'),
              onTap: (){
              },
            ),
          
          ListTile(
            title: Text('Consultancy'),
            onTap: (){
            },
          ),
          
          ListTile(
            title: Text('How to use mask'),
            onTap: (){
            },
          ),
          
          ListTile(
            title: Text('Cowatch'),
            onTap: (){
            },
          ),
          
          ListTile(
            title: Text('Youtube Feed'),
            onTap: (){
            },
          ),
          
          ListTile(
            title: Text('FAQ'),
            onTap: (){
            },
          ),
          
          ListTile(
            title: Text('About'),
            onTap: (){

            },
          )
        ],
      ),
    );
  }
}
