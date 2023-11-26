import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/pet_model.dart';

class OwnerInformation extends StatelessWidget {
  const OwnerInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
            color: Color(0xFFFFF2D0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18.0,
          ),
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(pets[0].owner.imageUrl),
          ),
          title: Text(
            owner.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text(
            'Owner',
            style: TextStyle(color: kPrimaryColor),
          ),
          trailing: const Text(
            '1.68 km',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
