import 'package:flutter/material.dart';
import 'package:linkedin_ui_clone/constants/colors.dart';
import 'package:linkedin_ui_clone/model/content_model.dart';
import 'package:linkedin_ui_clone/widgets/app_bar.dart';
import 'package:linkedin_ui_clone/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const LinkedInAppBar(),
      ),
      body: ListView.builder(
          itemCount: content.length,
          itemBuilder: ((context, index) {
            return Container(
              color: Color.fromARGB(255, 17, 23, 26),
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: bgColor,
                          backgroundImage: Image.network(
                            content[index][0],
                          ).image,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(content[index][1]),
                            Text(content[index][2]),
                            Text(content[index][3]),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      content[index][4],
                      style: TextStyle(letterSpacing: 0.2, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Image.network(content[index][5]),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(content[index][6]),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.40,
                        ),
                        Text(content[index][7]),
                        Text(content[index][8]),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        ContentBottomWidget(
                          icon: Icons.thumb_up_alt,
                          label: "Like",
                        ),
                        ContentBottomWidget(
                            icon: Icons.comment_rounded, label: "Comment"),
                        ContentBottomWidget(
                            icon: Icons.arrow_right_alt, label: "Share"),
                        ContentBottomWidget(
                            icon: Icons.send_rounded, label: "Send")
                      ],
                    ),
                  ]),
            );
          })),
      bottomNavigationBar: const LinkedInBottomNavBar(),
    );
  }
}

class ContentBottomWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  const ContentBottomWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey[500],
        ),
        Text(label),
      ],
    );
  }
}
