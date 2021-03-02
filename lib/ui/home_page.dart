import 'dart:io';

import 'package:azkar/data/azkar_data.dart';
import 'package:azkar/models/azkarTypeModel.dart';
import 'package:azkar/widgets/azkar_type_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AzkarType> azkarType = azkar_type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  exit(0);
                })
          ],
          backgroundColor: Colors.yellow.withOpacity(0.5),
          title: Center(
            child: Text(
              'أذكار المسلم',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: azkarType.length,
            itemBuilder: (context, index) {
              return AzkarTypeWidget(azkarType[index]);
            }));
  }
}
