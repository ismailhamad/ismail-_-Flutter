import 'package:flutter/material.dart';
import 'package:ismail/news_app/widgets/NewsWidget.dart';


import '../data/dummy_data.dart';

class AllNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsWidget(
                newsList[index]);
          }),
    );
  }
}
