import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/dating_app/widgets/profile_info_card.dart';

class UserStatistics extends StatelessWidget {
  const UserStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            const ProfileInfoCard(
              title: '54%',
              subTitle: 'Progress',
            ),
            ProfileInfoCard(
              iconAlignment: Alignment.center,
              icon: Image.asset(
                'assets/icons/pulse.png',
                color: Colors.red,
                fit: BoxFit.cover,
                width: 35,
                height: 40,
              ),
            ),
            const ProfileInfoCard(
              crossAxisAlignment: CrossAxisAlignment.center,
              title: '152',
              subTitle: 'Level',
            ),
          ],
        ),
      ],
    );
  }
}