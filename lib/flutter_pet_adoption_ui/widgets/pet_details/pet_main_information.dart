import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/pet_model.dart';

class PetMainInformation extends StatelessWidget {
  const PetMainInformation({Key? key, required this.pet}) : super(key: key);
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                pet.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: kPrimaryColor,
                    size: 30,
                  )),
              const SizedBox(width: 30),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            pet.description,
            style: const TextStyle(
              color: Colors.black26,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
