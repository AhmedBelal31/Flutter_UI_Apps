import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/dating_app/screens/super_liked_me.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../theming/color.dart';
import 'profile_info_card.dart';

class TableDetails extends StatelessWidget {
  const TableDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            const ProfileInfoCard(
              icon: Icon(
                Icons.star,
                color: primaryColor,
                size: 25,
              ),
              title: '13',
              subTitle: 'New Matches',
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SuperLikedMe(),
                  ),
                );
              },
              child: const ProfileInfoCard(
                icon: Icon(
                  Icons.favorite,
                  color: primaryColor,
                  size: 25,
                ),
                title: '42',
                subTitle: 'Super Likes ',
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            ProfileInfoCard(
              icon: Image.asset(
                'assets/icons/checklist.png',
                width: 25,
                height: 25,
                color: primaryColor,
              ),
              title: '246',
              subTitle: 'All Matches',
            ),
            const ProfileInfoCard(
              icon: Icon(
                FontAwesomeIcons.arrowsRotate,
                color: primaryColor,
                size: 25,
              ),
              title: '42',
              subTitle: 'Rematches ',
            ),
          ],
        ),
        const TableRow(
          children: [
            ProfileInfoCard(
              icon: Icon(
                Icons.remove_red_eye,
                color: primaryColor,
                size: 25,
              ),
              title: '404',
              subTitle: 'Profile Visitors ',
            ),
            ProfileInfoCard(
              icon: Icon(
                Icons.favorite,
                color: primaryColor,
                size: 25,
              ),
              title: '21',
              subTitle: 'Unmatched Me ',
            ),
          ],
        ),
        const TableRow(
          children: [
            ProfileInfoCard(
              icon: Icon(
                Icons.remove_red_eye,
                color: primaryColor,
                size: 20,
              ),
              title: '404',
              subTitle: 'Profile Visitors ',
            ),
            ProfileInfoCard(
              icon: Icon(
                Icons.photo_camera_back,
                color: primaryColor,
                size: 20,
              ),
              title: '42',
              subTitle: 'Super Photos ',
            ),
          ],
        ),
        TableRow(
          children: [
            ProfileInfoCard(
              icon: Image.asset(
                'assets/icons/checklist.png',
                width: 25,
                height: 25,
                color: primaryColor,
              ),
              title: '60',
              subTitle: 'All Matches',
            ),
            const ProfileInfoCard(
              icon: Icon(
                FontAwesomeIcons.plane,
                color: primaryColor,
                size: 20,
              ),
              title: '18',
              subTitle: 'Rematches ',
            ),
          ],
        ),
      ],
    );
  }
}
