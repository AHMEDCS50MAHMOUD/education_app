import 'package:education_app/Widgets/job_container.dart';
import 'package:education_app/Widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JopScreenState();
}

class _JopScreenState extends State<JobScreen> {
  final List<Map<String, dynamic>> jops = const [
    {
      'title': 'UX Designer',
      'company': 'Google',
      'location': 'California, USA',
      'description': 'We are looking for a talented UX Designer experienced in crafting intuitive user interfaces. Y...',
      'tag1': 'Full-time',
      'tag2': 'Middle',
      'containerColor': Color(0xFFD6CFFF),
      'tag1Color': Color(0xFFC0F4FF),
      'tag2Color': Color(0xFFEBC7FF),
      'imagePath': 'assets/images/google.jpeg'
    },
    {
      'title': 'QA Engineer',
      'company': 'Microsoft',
      'location': 'New York, USA',
      'description': 'Our Company looking for a professional QA Engineer. Hybrid work format and pleasant office.',
      'tag1': 'Hybrid',
      'tag2': 'Middle+',
      'containerColor': Color(0xFFFFE0A1),
      'tag1Color': Color(0xFFBFFFE4),
      'tag2Color': Color(0xFFFFD4E1),
      'imagePath': 'assets/images/Microsoft.jpeg'
    },
    {
      'title': 'Junior UI Designer',
      'company': 'Sky',
      'location': 'London, UK',
      'description': 'We\'re here to drive digital communication through technology innovation. The Group Digital Engagement.',
      'tag1': 'Remotely',
      'tag2': 'Junior',
      'containerColor': Color(0xFFD6CFFF),
      'tag1Color': Color(0xFFC4FFD1),
      'tag2Color': Color(0xFFEBC7FF),
      'imagePath': 'assets/images/Sky.jpeg'
    },
    {
      'title': 'Content Designer',
      'company': 'Lsn Hayni',
      'location': 'Warsaw, Poland',
      'description': 'We are looking for a talented UX Designer experienced in crafting intuitive user interfaces. Y...',
      'tag1': 'Remotely',
      'tag2': 'Junior',
      'containerColor': Color(0xFFFFC5B5),
      'tag1Color': Color(0xFFC4FFD1),
      'tag2Color': Color(0xFFEBC7FF),
      'imagePath': 'assets/images/Lsn Hayni.jpeg'
    }
  ];

  Future<void> _handleRefresh() async {
    // Simulate a network request
    return await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //key: UniqueKey(),
        backgroundColor: Colors.black,
        title: const Text('Career',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: const Icon(Icons.favorite_border, color: Colors.white),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _handleRefresh,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Jobs',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const Icon(Icons.filter_list, color: Colors.white),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemCount: jops.length,
              itemBuilder: (context, index) {
                final jop = jops[index];
                return JobContainer(
                  title: jop['title'],
                  company: jop['company'],
                  location: jop['location'],
                  description: jop['description'],
                  tag1: jop['tag1'],
                  tag2: jop['tag2'],
                  containerColor: jop['containerColor'],
                  tag1Color: jop['tag1Color'],
                  tag2Color: jop['tag2Color'],
                  imagePath: jop['imagePath'],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
