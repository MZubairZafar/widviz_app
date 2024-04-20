import 'package:flutter/material.dart';
import 'package:widviz/components/colors.dart';

import '../dummy/dummyVideoScroll.dart';

class MixScreen extends StatefulWidget {
  const MixScreen({Key? key});

  @override
  State<MixScreen> createState() => _MixScreenState();
}

class _MixScreenState extends State<MixScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    List<DummyVideo> myVid = [
      DummyVideo(
          likes: '245k',
          messages: '805',
          shares: '500',
          image: 'assets/back pose.jpg',
          title: '#iksodft original',
          duration: '01:05',
          ratio: '2:2'),
      DummyVideo(
          likes: '245k',
          messages: '805',
          shares: '500',
          image: 'assets/bg.jpg',
          title: '#iksodft original',
          duration: '01:05',
          ratio: '2:2'),
      DummyVideo(
          likes: '245k',
          messages: '805',
          shares: '500',
          image: 'assets/back pose.jpg',
          title: '#iksodft original',
          duration: '01:05',
          ratio: '2:2'),
    ];

    return Scaffold(
      backgroundColor: shadowColor,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          controller: controller,
          itemCount: myVid.length,
          itemBuilder: (BuildContext context, int itemIndex) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(myVid[itemIndex].image),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Icons
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          myVid[itemIndex].likes,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          myVid[itemIndex].messages,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          myVid[itemIndex].shares,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Modern agency line
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          myVid[itemIndex].title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),

                  // Use button line
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.lock_clock,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              myVid[itemIndex].duration,
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.rectangle_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              myVid[itemIndex].ratio,
                              style: const TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                myVid[itemIndex].shares+' downloads',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 40),
                            Container(
                              width: 60,
                              child: FloatingActionButton.extended(
                                backgroundColor: buttonColor,
                                onPressed: () {},
                                label: const Text(
                                  'Use',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
