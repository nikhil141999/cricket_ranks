import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class T20Tab extends StatefulWidget {
  const T20Tab({Key? key}) : super(key: key);

  @override
  State<T20Tab> createState() => _T20TabState();
}

class _T20TabState extends State<T20Tab> {
  bool isSelected = false;
  var select;
  Map? items;
  Future<void> Jsonread() async {
    final String response =
        await rootBundle.loadString('assets/ranking_response.json');
    final data = await json.decode(response);
    setState(() {
      items = data["responseData"];
    });
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Jsonread();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    select = 'Batsmen';
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(103, 18, 142, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Batsmen',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select = 'Bowlers';
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(103, 18, 142, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Bowlers',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select = 'all-rounders';
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(103, 18, 142, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'all-rounders',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    select = 'Teams';
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(103, 18, 142, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Teams',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          select == 'Batsmen'
              ? Flexible(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items!['result']['t20Batsman'][index]['position']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Batsman'][index]['player_name']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Batsman'][index]['points']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                        ],
                      );
                    },
                    itemCount: 90,
                  ),
                )
              : Container(),
          select == 'Bowlers'
              ? Flexible(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items!['result']['t20Bowler'][index]['position']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Bowler'][index]['player_name']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Bowler'][index]['points']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                        ],
                      );
                    },
                    itemCount: 100,
                  ),
                )
              : Container(),
          select == 'all-rounders'
              ? Flexible(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items!['result']['t20AllRounder'][index]['position']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20AllRounder'][index]
                                    ['player_name']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20AllRounder'][index]['points']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                        ],
                      );
                    },
                    itemCount: 18,
                  ),
                )
              : Container(),
          select == 'Teams'
              ? Flexible(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items!['result']['t20Teams'][index]['position']
                                .toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Teams'][index]['team_name']
                                .toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Teams'][index]['rating']
                                .toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['t20Teams'][index]['points']
                                .toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ],
                      );
                    },
                    itemCount: 81,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
