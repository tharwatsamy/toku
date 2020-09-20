import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/ui/components/custom_app_bar.dart';
import 'package:toku/ui/components/custom_container.dart';

class NumbersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Numbers'),
      body: ListView.builder(
        //TODO : Build Lists
        itemBuilder: (context, index) {
          print('numbersList = ${numbersList[index].music}');
          print(index);
          return CustomContainer(
            music: numbersList[index].music,
            color: Color(0xFFEF9234),
            image: numbersList[index].image,
            englishName: numbersList[index].englishName,
            japaneseName: numbersList[index].japaneseName,
          );
        },
        itemCount: numbersList.length,
      ),
    );
  }
}
