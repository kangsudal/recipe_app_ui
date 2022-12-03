import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(),
              Row(
                children: [
                  Placeholder(
                    fallbackHeight: 40,
                    fallbackWidth: 200,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Icon(Icons.filter_list)),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: 'bookmark',
            icon: Icon(Icons.bookmark),
          ),
          BottomNavigationBarItem(
            label: 'history',
            icon: Icon(Icons.history),
          ),
        ],
      ),
    );
  }

  Column title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Find Best Recipe',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        Text(
          'For Cooking',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
