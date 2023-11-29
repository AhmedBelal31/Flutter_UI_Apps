import 'package:flutter/material.dart';

class UserCircleAvatar extends StatelessWidget {
  const UserCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 450,
      child: Image(
        image: AssetImage('assets/images/user.png'),
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}