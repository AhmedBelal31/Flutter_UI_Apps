import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theming/text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            'My Profile ',
            style: headingTextStyle,
          ),
          Spacer(),
          Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}