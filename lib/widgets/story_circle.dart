import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              // color: Colors.red,
                              border:
                                  Border.all(color: Colors.green, width: 3)),
                          // child: CircleAvatar(
                          //   radius: 10,
                          //   backgroundColor: Colors.indigo,
                          // ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.indigo,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://static.businessinsider.com/image/5484d9d1eab8ea3017b17e29/image.jpg"),
                                    fit: BoxFit.cover)),
                            // child: CircleAvatar(
                            //   radius: 10,
                            //   backgroundColor: Colors.indigo,
                            // ),
                          ),
                        ),
                      ],
                    ),
                    Text("blue_buoy")
                  ],
                ),
              );
  }
}