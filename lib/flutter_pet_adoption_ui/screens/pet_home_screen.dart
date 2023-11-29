import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/flutter_pet_adoption_ui/models/pet_model.dart';
import 'package:flutter_ui_apps/flutter_pet_adoption_ui/widgets/home/category_list.dart';
import '../widgets/home/pet_card.dart';

class PetHomeScreen extends StatelessWidget {
  const PetHomeScreen({Key? key}) : super(key: key);

  Widget _buildTF() => const SizedBox(
    height: 40,
    child: TextField(
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.add_location,
                size: 40,
              ),
            ),
            labelText: 'Location ',
            labelStyle: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w900, fontSize: 20),
            contentPadding: EdgeInsets.only(
              bottom: 20,
            ),
          ),
        ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, bottom: 20),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(pets[0].owner.imageUrl),
                  ),
                  const SizedBox(height: 30),
                  _buildTF(),
                  const SizedBox(height: 10),
                  const Divider(height: 20),
                  const CategoryList(),
                  PetCard(pet: pets[0]),
                  PetCard(
                    pet: pets[1],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
