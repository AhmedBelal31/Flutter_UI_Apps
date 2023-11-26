import 'package:flutter/material.dart';

import '../../models/pet_model.dart';
import 'pet_information_item.dart';

class PetInformationList extends StatelessWidget {
  const PetInformationList({Key? key, required this.pet}) : super(key: key);
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          PetInformationItem(
            title: 'Age',
            subTitle: '${pet.age}',
          ),
          PetInformationItem(
            title: 'Sex',
            subTitle: pet.sex,
          ),
          PetInformationItem(
            title: 'Color',
            subTitle: pet.color,
          ),
          const PetInformationItem(
            title: 'Tag',
            subTitle: '123',
          ),
        ],
      ),
    );
  }
}
