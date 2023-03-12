import 'package:flutter/material.dart';

import '../tabs/feedview.dart';
import '../tabs/reels.dart';
import '../tabs/taggedview.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> tabs = const [
    Tab(
      icon: Icon(
        Icons.home,
        color: Colors.blue,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.blue,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.blue,
      ),
    ),
  ];

  final List<Widget> tabBarView = [
    FeedView(),
    ReelsView(),
    TaggedView(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '500',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Following'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '510K',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Followers'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Vaibhav.C',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '|',
                    ),
                    Text(
                      'App Developer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Programmer',
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text('Edit Profile'),
                              ))),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Contact ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TabBar(tabs: tabs),
                SizedBox(
                    height: 600,
                    child: TabBarView(
                      children: tabBarView,
                    ))
              ],
            ),
          ),
        ));
  }
}
