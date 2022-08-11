import 'package:flutter/material.dart';
import 'package:linkedin_ui_clone/constants/colors.dart';

class LinkedInAppBar extends StatelessWidget {
  const LinkedInAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: widgetsColor,
          backgroundImage: Image.network("https://i.pravatar.cc/700").image,
        ),
        Container(
          padding: const EdgeInsets.all(6),
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff1c2c34),
          ),
          child: Row(children: const [
            // linkedin search bar
            Icon(
              Icons.search,
              size: 25,
            ),
            Text(
              'Search',
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        const Icon(Icons.message, size: 25),
      ],
    );
  }
}
