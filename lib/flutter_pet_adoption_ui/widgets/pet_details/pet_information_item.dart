import 'package:flutter/material.dart';

import '../../constants.dart';

class PetInformationItem extends StatelessWidget {
  const PetInformationItem(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  final String title;

  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
        width: 100,
        decoration: BoxDecoration(
          color: const Color(0xFFF8F2F7),
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: kPrimaryColor,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subTitle,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ],
        ));
  }
}
