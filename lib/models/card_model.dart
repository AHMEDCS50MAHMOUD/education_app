


import 'package:flutter/material.dart';

class CardModel {
 final String title;
  final String price;
  final String rating;
  final String hours;
  final String people;
  final Color bgColor;
  final String imageAsset; 
  final bool isFavorite;
  

CardModel({
    required this.title,
    required this.price,
    required this.rating,
    required this.hours,
    required this.people,
    required this.bgColor,
    required this.imageAsset,
    this.isFavorite = false,
  });
}
  List<CardModel> cardList = [
    CardModel(
      title: 'UX/UI designer',
      price: '800\$',
      rating: '4.8',
      hours: '10Hours',
      people: '12k People',
      bgColor: Color(0xFFD2FF1F),
      imageAsset: 'assets/images/29.png',
      isFavorite: true,
    ),
  
    CardModel(
      title: 'SMM & Marketing',
      price: '39.99\$',
      rating: '4.7',
      hours: '15Hours',
      people: '10k People',
      bgColor: Color(0xFFFF825C),
      imageAsset: 'assets/images/30.png',
    ),
    CardModel(
      title: 'Game Dev',
      price: '35.99\$',
      rating: '4.6',
      hours: '25Hours',
      people: '19k People',
      bgColor: Color(0xFFDCC1FF),
      imageAsset: 'assets/images/39.png',
    )
    
    /*TaskModel(
      taskTitle: 'Client Presentation',
      date: '2024-06-17',
      startTime: '01:00 PM',
      endTime: '02:00 PM',
      description: 'Present project progress to the client.',
      statusText: 'Completed',
      color: Color(0xFFFFA726),
    ),*/
  ];
