import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/dating_app/theming/color.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/table_details.dart';
import '../widgets/user_circle_avatar.dart';
import '../widgets/user_information.dart';
import '../widgets/user_statistics.dart';

class DatingHomeScreen extends StatelessWidget {
  const DatingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const UserCircleAvatar(),
        _buildBackgroundColor(),
        const Positioned(
          top: 0,
          right: 10,
          left: 10,
          child: SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAppBar(),
                SizedBox(height: 10),
                UserInformation()
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(top: 390),
            child: const Column(
              children: [
                UserStatistics(),
                TableDetails(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildBackgroundColor() => Container(
        height: 450,
        color: primaryColor.withOpacity(0.8),
      );
}
