import 'package:azkar/data/azkar_data.dart';
import 'package:azkar/models/azkarModel.dart';
import 'package:azkar/models/azkarTypeModel.dart';
import 'package:azkar/widgets/azkar_widget.dart';
import 'package:flutter/material.dart';

class AzkarPage extends StatelessWidget {
  AzkarType _azkarType;
  List<Azkar> azkar;
  AzkarPage(AzkarType _azkarType) {
    this._azkarType = _azkarType;
    getAllAzkar();
  }

  getAllAzkar() {
    if (_azkarType.type == 'أذكار الصباح') {
      this.azkar = azkar_of_morning;
    } else if (_azkarType.type == 'أذكار المساء') {
      this.azkar = azkar_of_evening;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.withOpacity(0.5),
        title: Center(
          child: Text(
            this._azkarType.type,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: azkar.length,
          itemBuilder: (BuildContext context, int index) {
            return AzkarWidget(
              azkar[index],
            );
          }),
    );
  }
}
