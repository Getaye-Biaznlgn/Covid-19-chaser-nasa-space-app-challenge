import 'package:flutter/cupertino.dart';

class Consultant {
  final String name;
  final String lastName;
  final String contact;
  final String fieldOfSpecialisation;
  final String about;
  final String yearOfExperience;
  final String country;
  final String imageUrl;
  Consultant(
      {@required this.name,
      @required this.lastName,
      @required this.fieldOfSpecialisation,
      @required this.country,
      @required this.imageUrl,
      @required this.yearOfExperience,
      @required this.about,
      @required this.contact});

  static List<Consultant> getConsultants() {
    return [
      Consultant(
          name: "Dr Mirazh",
          lastName: 'Buffet',
          fieldOfSpecialisation: 'Vascular',
          country: 'Ethiopia',
          yearOfExperience: '8 Years',
          imageUrl: 'assets/images/doctor-1.jpg',
          about:
              'A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health. A doctor is tasked with interacting with patients, diagnosing medical problems and successfully treating illness or injury.',
          contact: '+251 904 5678'),
      Consultant(
          name: "Dr Hera",
          lastName: 'George',
          fieldOfSpecialisation: 'cancer',
          country: 'Ethiopia',
          yearOfExperience: '8 Years',
          imageUrl: 'assets/images/doctor-2.jpg',
          about:
              'A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health. A doctor is tasked with interacting with patients, diagnosing medical problems and successfully treating illness or injury.',
          contact: '+251 904 5678'),
      Consultant(
          name: "Dr Hera",
          lastName: 'Alen',
          fieldOfSpecialisation: 'Vascular',
          country: 'Ethiopia',
          yearOfExperience: '7 Years',
          imageUrl: 'assets/images/doctor-3.jpg',
          about:
              'A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health. A doctor is tasked with interacting with patients, diagnosing medical problems and successfully treating illness or injury.',
          contact: '+251 904 5678'),
      Consultant(
          name: "Dr Hera",
          lastName: 'Theodore',
          fieldOfSpecialisation: 'Vascular',
          country: 'Ethiopia',
          yearOfExperience: '7 Years',
          imageUrl: 'assets/images/doctor-4.jpg',
          about:
              'A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health. A doctor is tasked with interacting with patients, diagnosing medical problems and successfully treating illness or injury.',
          contact: '+251 904 5678'),
    ];
  }
}
