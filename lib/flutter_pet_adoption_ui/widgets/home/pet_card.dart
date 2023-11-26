import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/flutter_pet_adoption_ui/screens/adopt_pet_screen.dart';

import '../../constants.dart';
import '../../models/pet_model.dart';

class PetCard extends StatelessWidget {
  const PetCard({
    super.key,
    required this.pet,
  });

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AdoptPetScreen(
            pet: pet,
          ),
        ));
      },
      child: Column(
        children: [
          Hero(
            tag: pet.id,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30, top: 30),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      pet.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                pet.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
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
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              pet.description,
              style: const TextStyle(
                color: Colors.black26,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
