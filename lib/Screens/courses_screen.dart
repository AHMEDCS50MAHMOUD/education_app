import 'package:education_app/Screens/notifications_screen.dart';
import 'package:education_app/Widgets/filter_continer.dart';
import 'package:education_app/Widgets/home_card.dart';
import 'package:education_app/Widgets/nav_bar.dart';
import 'package:education_app/Widgets/noftiIcon_block.dart';
import 'package:education_app/Widgets/sectionheader.dart';
import 'package:education_app/models/card_model.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: UniqueKey(),
        backgroundColor: Colors.transparent,
      
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotificationsScreen()),
              );
            },
            child:NoftiiconBlock(), 
         
          ),
        ],
        title: 
        Row(
          //crossAxisAlignment: CrossAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage('assets/images/Home.jpg'),
                ),
                SizedBox(width: 15),
                Text(
                  'Hello, Jane',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
        automaticallyImplyLeading: false

      ),
      backgroundColor: Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  FilterContiner(label: "UX/UI", isSelected: true),
                  FilterContiner(label: "Python"),
                  FilterContiner(label: "Marketing"),
                  FilterContiner(label: "Game dev"),
                  FilterContiner(label: "Coding"),
                  FilterContiner(label: "Java"),
                ],
              ),
              const SizedBox(height: 10),

              Sectionheader(title: 'Courses'),

              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return HomeCard(
                      title: cardList[index].title,
                      price: cardList[index].price,
                      rating: cardList[index].rating,
                      hours: cardList[index].hours,
                      people: cardList[index].people,
                      bColor: cardList[index].bgColor,
                      imageAsset: cardList[index].imageAsset,
                      isfavorite: cardList[index].isFavorite,
                    );
                  },
                ),
              ),

              /// Dates
              const SizedBox(height: 10),
              Sectionheader(title: 'Lectures'),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return HomeCard(
                      title: cardList[2-index].title,
                      price: cardList[2-index].price,
                      rating: cardList[2-index].rating,
                      hours: cardList[2-index].hours,
                      people: cardList[2-index].people,
                      bColor: cardList[2-index].bgColor,
                      imageAsset: cardList[2-index].imageAsset,
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),
              Sectionheader(title: 'On Top'),
              SizedBox(
                height: 210,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: cardList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    return HomeCard(
                      title: cardList[index].title,
                      price: cardList[index].price,
                      rating: cardList[index].rating,
                      hours: cardList[index].hours,
                      people: cardList[index].people,
                      bColor: cardList[index].bgColor,
                      imageAsset: cardList[index].imageAsset,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
