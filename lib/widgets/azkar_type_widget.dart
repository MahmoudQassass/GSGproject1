import 'package:azkar/models/azkarTypeModel.dart';
import 'package:azkar/ui/azkar_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AzkarTypeWidget extends StatelessWidget {
  AzkarType _azkarType;
  AzkarTypeWidget(this._azkarType);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(AzkarPage(this._azkarType));
      },
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(_azkarType.image),
              ),
            )),
            Text(
              _azkarType.type,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
