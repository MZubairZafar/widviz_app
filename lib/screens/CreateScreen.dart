import 'package:flutter/material.dart';
import 'package:widviz/screens/CreateProject.dart';
import 'package:widviz/widgets/ProjectWidget.dart';

import '../dummy/dummy.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  List<DummyProjects> dummyP = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 20, 21, 24),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>  const CreateProject()));

                      // setState(() {
                      //   dummyP.add(
                      //     DummyProjects(
                      //         title: 'Project title',
                      //         image: 'assets/DSC09475.jpg',
                      //         subtitle: 'Last Seen:' + "12/12/2023"),
                      //   );
                      // });
                    },
                    child: const ProjectWidget(),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: dummyP.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Card(
                            color: const Color.fromARGB(250, 20, 21, 24),
                            child: ListTile(
                              leading: Image(
                                image: AssetImage(dummyP[index].image),
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  )),
                              title: Text(
                                dummyP[index].title,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              subtitle: Text(
                                dummyP[index].subtitle,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
