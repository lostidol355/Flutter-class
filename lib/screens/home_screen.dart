import 'package:flutter/material.dart';

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

          Row(
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
                              "https://w7.pngwing.com/pngs/502/150/png-transparent-havanese-dog-pet-sitting-labrador-retriever-puppy-cat-pet-dog-animals-carnivoran-pet.png"),
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
              )
            ],
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
