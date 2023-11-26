import 'package:flutter/material.dart';

import 'pet_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          Icon(Icons.search, size: 35),
          PetCategory(isSelected: false, category: 'Cats'),
          PetCategory(isSelected: true, category: 'Dogs'),
          PetCategory(isSelected: false, category: 'Birds'),
          PetCategory(isSelected: false, category: 'Others'),
        ],
      ),
    );
  }
}
