import 'package:flutter/material.dart';
import 'package:toku/ui/pages/family_members_page.dart';
import 'package:toku/ui/pages/number_page.dart';

import '../components/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6DC),
      appBar: buildAppBar(title: 'Toku'),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 88,
              color: Color(0xFFEF9234),
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Numbers',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 88,
              color: Color(0xFF558836),
              width: double.infinity,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Family Members',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 88,
            color: Color(0xFF79349F),
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Colors',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 88,
            color: Color(0xFF4FADC7),
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Phrases',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
