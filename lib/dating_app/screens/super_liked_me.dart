import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/dating_app/theming/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theming/text_style.dart';
import '../widgets/super_liked_me/Super_liked_list.dart';

class SuperLikedMe extends StatelessWidget {
  const SuperLikedMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _superLikedAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(),
              const SizedBox(height: 20),
              _buildTF(),
              const SizedBox(height: 20),
              _buildTitleOfSuperLikedList(),
              const SizedBox(height: 5),
              const Divider(),
              const SizedBox(height: 20),
              const SuperLikedList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _superLikedAppBar(context) => AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Text(
            'SELECT ',
            style: actionMenuStyle,
          )
        ],
      );

  Widget _buildTitle() => Text(
        'Super Liked Me',
        style: headingTextStyle.copyWith(color: Colors.black, fontSize: 28),
      );

  Widget _buildTF() => const Card(
        color: Colors.white,
        elevation: 2,
        child: TextField(
          style: TextStyle(fontSize: 20, letterSpacing: 1.8),
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: primaryColor,
              ),
              hintText: 'Search Friends ',
              hintStyle: TextStyle(fontSize: 20, letterSpacing: 1.8)),
        ),
      );

  Widget _buildTitleOfSuperLikedList() => const Row(
        children: [
          Text(
            'Super Likes ',
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: Text(
              '5',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Text(
            '1h',
            style: subTitleStyle,
          ),
        ],
      );
}
