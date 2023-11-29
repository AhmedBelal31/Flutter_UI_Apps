import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/flutter_pet_adoption_ui/constants.dart';
import '../models/pet_model.dart';
import '../widgets/pet_details/adoption_buttons.dart';
import '../widgets/pet_details/owner_information.dart';
import '../widgets/pet_details/pet_information_list.dart';
import '../widgets/pet_details/pet_main_information.dart';

class AdoptPetScreen extends StatelessWidget {
  const AdoptPetScreen({Key? key, required this.pet}) : super(key: key);
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildPetBanner(context),
            const SizedBox(height: 20),
            PetMainInformation(
              pet: pet,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  PetInformationList(pet: pet),
                  const OwnerInformation(),
                  const SizedBox(height: 30),
                  const Text(
                    'I recently lost my job and don\'t have enough time '
                    'or money to tend to Bo anymore. I have a lot of health issues '
                    'that need attention...',
                    style: TextStyle(
                        fontSize: 16, height: 2, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AdoptionButtons(),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPetBanner(context) => Hero(
        tag: pet.id,
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 3.2,
          child: Image(
            image: AssetImage(
              pet.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
}
