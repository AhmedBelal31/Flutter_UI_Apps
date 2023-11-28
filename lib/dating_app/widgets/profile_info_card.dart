import 'package:flutter/material.dart';

import '../theming/text_style.dart';

class ProfileInfoCard extends StatelessWidget {
  const ProfileInfoCard({
    super.key,
    this.title,
    this.subTitle,
    this.icon,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.iconAlignment = Alignment.topRight,
  });

  final Widget? icon;

  final String? title;

  final String? subTitle;

  final CrossAxisAlignment? crossAxisAlignment;
  final AlignmentGeometry iconAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.5),
              blurRadius: 7,
              offset: const Offset(0, 8),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 5, bottom: 15, right: 16),
        child: Column(
          crossAxisAlignment: crossAxisAlignment!,
          children: [
            icon != null
                ? Align(alignment: iconAlignment, child: icon)
                : const SizedBox(),
            title != null
                ? Text(
              title!,
              style: titleStyle,
            )
                : const SizedBox(),
            subTitle != null
                ? Text(
              subTitle!,
              style: subTitleStyle,
            )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}