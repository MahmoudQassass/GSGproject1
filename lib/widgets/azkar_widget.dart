import 'package:azkar/models/azkarModel.dart';
import 'package:flutter/material.dart';

class AzkarWidget extends StatelessWidget {
  Azkar _azkar;
  AzkarWidget(this._azkar);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        subtitle: Text(
          _azkar.subTitle ?? '',
          style: TextStyle(color: Colors.blue.withOpacity(0.7)),
        ),
        leading: Icon(
          Icons.ac_unit,
          color: Colors.green,
        ),
        title: Text(
          this._azkar.content,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
