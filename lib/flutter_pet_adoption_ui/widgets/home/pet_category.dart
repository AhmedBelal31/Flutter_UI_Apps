import 'package:flutter/material.dart';

import '../../constants.dart';

class PetCategory extends StatelessWidget {
  const PetCategory({
    Key? key,
    required this.isSelected,
    required this.category,
  }) : super(key: key);

  final bool isSelected;

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        10,
      ),
      width: 75,
      decoration: BoxDecoration(
        color: isSelected ? kPrimaryColor : const Color(0xFFF8F2F7),
        border: isSelected
            ? Border.all(width: 8.0, color: const Color(0xFFF8F2F7))
            : null,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Center(
        child: Text(
          category,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
