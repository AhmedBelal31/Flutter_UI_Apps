import 'package:flutter/material.dart';

import '../../theming/text_style.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
            radius: 72,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.png'),
            )),
        SizedBox(height: 18),
        Text(
          'Anne Grethe , 24 ',
          style: whiteNameTextStyle,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            Text(
              '  34 km',
              style: whiteSubHeadingTextStyle,
            )
          ],
        ),
      ],
    );
  }
}
