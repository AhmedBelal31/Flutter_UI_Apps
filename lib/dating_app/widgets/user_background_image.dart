import 'package:flutter/material.dart';

import '../theming/color.dart';

class UserBackgroundImage extends StatelessWidget {
  const UserBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage('assets/images/user.png'),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Container(
          color: primaryColor.withOpacity(.8),
        ),
      ],
    );
  }
}