import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/story_circle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          //  custom app bar
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(image: AssetImage("assets/images/ig_logo.png")),
                    Icon(Icons.keyboard_arrow_down_sharp),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage("assets/icons/heart.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage("assets/icons/chat.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Image(image: AssetImage("assets/icons/add.png")),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // story circle row

          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://static.businessinsider.com/image/5484d9d1eab8ea3017b17e29/image.jpg"),
                          ),
                        ),
                        const Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text("Ruffles")
                  ],
                ),
                StoryCircle(),
                StoryCircle(),
                StoryCircle(),
                StoryCircle(),
                StoryCircle(),
                StoryCircle(),
                StoryCircle(),
              ],
            ),
          )
          //  instagram post
          // react/comment wala row
          // text
          // bottom navigation bar
        ],
      )),
    );
  }
}
