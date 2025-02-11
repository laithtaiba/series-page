import 'package:flutter/material.dart';
import 'package:series_page/pages/bottom_nav_bar.dart';
import 'package:series_page/pages/filters.dart';
import 'package:series_page/pages/search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NameWidget(),
    );
  }
}

class Name extends StatelessWidget {
  const Name({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Flutter"),
      ),
    );
  }
}

class NameWidget extends StatefulWidget {
  const NameWidget({super.key});
  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 244, 244, 244),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text("Series App"),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        title: const Text("Sorry you can't search now"),
                      );
                    });
              },
              icon: const Icon(Icons.search))
        ],
      ),
      drawer: const Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black26),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/1.jpg"),
                ),
                accountName: Text("Laith Taiba"),
                accountEmail: Text("laithtaiba@gmail.com")),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Laith",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Check for latest addition ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100, top: 4),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/1.jpg"),
                      maxRadius: 33,
                      minRadius: 33,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const SearchPage(),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                "Filters",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const FilterPage(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Featured ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Series",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      image: const DecorationImage(
                          image: AssetImage(
                            "images/tokeo.jpg",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                  width: 320,
                  height: 370,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
