import 'package:flutter/material.dart';
import 'super_liked_list_item.dart';

class SuperLikedList extends StatelessWidget {
  const SuperLikedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => const SuperLikedListItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 6,
    );
  }
}
