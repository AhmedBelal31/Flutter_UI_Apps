import 'package:flutter/material.dart';

import '../../constants.dart';

class AdoptionButtons extends StatelessWidget {
  const AdoptionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: Icon(
              Icons.upload,
              color: kPrimaryColor,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            child: ListTile(
              contentPadding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),
              leading: const Icon(
                Icons.groups_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'ADOPTION',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width / 9),

      ],
    );
  }
}
