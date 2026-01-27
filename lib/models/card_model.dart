
import 'dart:ui';

class CardModel {
 final String title;
  final String price;
  final String rating;
  final String hours;
  final String people;
  final Color bgColor;
  final String imageAsset; 
  

CardModel({
    required this.title,
    required this.price,
    required this.rating,
    required this.hours,
    required this.people,
    required this.bgColor,
    required this.imageAsset,
   
  });
}
  List<CardModel> cardList = [
    CardModel(
      title: 'UX/UI designer',
      price: '\$800',
      rating: '4.8',
      hours: '10h',
      people: '120',
      bgColor: Color(0xFF414141),
      imageAsset: 'assets/images/uxui.jpg',
    ),
  
    CardModel(
      title: 'SMM & Marketing',
      price: '\$39.99',
      rating: '4.7',
      hours: '15h',
      people: '180',
      bgColor: Color(0xFF414141),
      imageAsset: 'assets/images/marketing.jpg',
    ),
    CardModel(
      title: 'Game Dev',
      price: '\$35.99',
      rating: '4.6',
      hours: '25h',
      people: '300',
      bgColor: Color(0xFF414141),
      imageAsset: 'assets/images/gamedev.jpg',
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
