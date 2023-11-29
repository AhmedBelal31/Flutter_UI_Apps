import 'package:flutter/material.dart';
import '../../theming/color.dart';
import '../../theming/text_style.dart';

class SuperLikedListItem extends StatelessWidget {
  const SuperLikedListItem({super.key});

  @override
  Widget build(BuildContext context) => Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: const Text('Anne'),
            subtitle: const Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: primaryColor,
                ),
                SizedBox(width: 8),
                Text('34 KM'),
              ],
            ),
            trailing: SizedBox(
              width: 65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                      ),
                      const Spacer(),
                      Text(
                        'Online',
                        style: whiteSubHeadingTextStyle.copyWith(
                            color: Colors.green, fontSize: 14),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: primaryColor,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
