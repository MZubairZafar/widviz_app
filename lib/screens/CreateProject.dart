import 'package:flutter/material.dart';
import 'package:widviz/screens/editScreen.dart';
// import 'package:widviz/screens/EditScreen.dart';

import '../components/colors.dart';

class CreateProject extends StatelessWidget {
  const CreateProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 20, 21, 24),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(250, 20, 21, 24),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: FloatingActionButton.extended(
              backgroundColor: const Color.fromARGB(250, 20, 21, 24),
              onPressed: () {},
              label: const Row(
                children: [
                  Icon(
                    Icons.folder_open,
                    color: Colors.white,
                  ),
                  Text(
                    'Import',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'Project Name',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Project Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(32),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(32)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'Aspect Ratio',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Wrap(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '16:9',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '16:9',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '9:16',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '1:1',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '4:3',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '3:4',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '4:5',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              backgroundColor: Colors.black12,
                              radius: 40.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.airplay_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '2.35:1',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: FloatingActionButton.extended(
                  backgroundColor: buttonColor,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditScreen()));
                  },
                  label: const Text(
                    'Create',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
