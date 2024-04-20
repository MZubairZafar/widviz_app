import 'package:flutter/material.dart';
import 'package:widviz/components/colors.dart';
import 'package:widviz/dummy/dummySearch.dart';

import '../dummy/dummyCategories.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<DummyCategories> categories = [
    DummyCategories(categoryName: 'All'),
    DummyCategories(categoryName: 'Marketing'),
    DummyCategories(categoryName: 'Corporate'),
    DummyCategories(categoryName: 'Celebrations'),
    DummyCategories(categoryName: 'Holiday'),
    DummyCategories(categoryName: 'Social Media'),
    DummyCategories(categoryName: 'Vlog'),
    DummyCategories(categoryName: 'Review'),
    DummyCategories(categoryName: 'Memes'),
  ];
  List<DummySearch> mySearch = [
    DummySearch(image: 'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_640.jpg',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://images.unsplash.com/photo-1607992922515-7e38329e65d4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://plus.unsplash.com/premium_photo-1667311649552-2cfab63bdcfc?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmF0dXJlJTIwaW1hZ2VzfGVufDB8fDB8fHww',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?size=626&ext=jpg&ga=GA1.1.87170709.1707264000&semt=sph',
        downloads: '50k',
        likes: '250k'),
    DummySearch(image: 'https://t4.ftcdn.net/jpg/05/47/97/81/360_F_547978128_vqEEUYBr1vcAwfRAqReZXTYtyawpgLcC.jpg',
        downloads: '50k',
        likes: '250k'),
    // DummySearch(image: 'https://t4.ftcdn.net/jpg/05/47/97/81/360_F_547978128_vqEEUYBr1vcAwfRAqReZXTYtyawpgLcC.jpg',
    //     downloads: '50k',
    //     likes: '250k'),
    DummySearch(image: 'https://i.pinimg.com/736x/d9/de/11/d9de112b2c4aedef6df31d05194adf21.jpg',
        downloads: '50k',
        likes: '250k'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Search for Projects',
                  hintStyle: const TextStyle(color: Colors.grey),
                  fillColor: shadowColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: shadowColor,
                        textStyle: const TextStyle(color: Colors.white),
                      ),
                      child: Text(
                        categories[index].categoryName,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: mySearch.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      height: 600,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                            image: NetworkImage(
                                mySearch[index].image),
                            fit: BoxFit.cover),
                        color: shadowColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.transparent, Colors.black]),
                            ),
                          ),
                          Positioned(
                              bottom: 15,
                              left: 0,
                              right: 0,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    mySearch[index].downloads,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    mySearch[index].likes,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
