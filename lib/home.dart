import 'package:cricket_ranks/odi.dart';
import 'package:cricket_ranks/t20.dart';
import 'package:cricket_ranks/test.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ranks'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: 'ODI'),
              Tab(text: 'Test'),
              Tab(text: 'T20'),
            ],
          ),
          backgroundColor: Color.fromRGBO(103, 18, 142, 1),
        ),
        body: TabBarView(
          children: [
            OdiTab(),
            TestTab(),
            T20Tab(),
          ],
        ),
      ),
    );
  }
}
