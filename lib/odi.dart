import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OdiTab extends StatefulWidget {
  const OdiTab({Key? key}) : super(key: key);

  @override
  State<OdiTab> createState() => _OdiTabState();
}

class _OdiTabState extends State<OdiTab> {
  bool isSelected = false;
  var select;
  Map? items;
  Future<void> readJson() async {
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
    readJson();
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                items!['result']['odiBatsman'][index]
                                        ['position']
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(
                              items!['result']['odiBatsman'][index]
                                      ['player_name']
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              items!['result']['odiBatsman'][index]['points']
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: 95,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                items!['result']['odiBowler'][index]['position']
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              items!['result']['odiBowler'][index]
                                      ['player_name']
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              items!['result']['odiBowler'][index]['points']
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: 95,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              items!['result']['odiAllRounder'][index]
                                      ['position']
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w300),
                            ),
                          ),
                          Text(
                            items!['result']['odiAllRounder'][index]
                                    ['player_name']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['odiAllRounder'][index]['points']
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
                            items!['result']['odiTeams'][index]['position']
                                .toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['odiTeams'][index]['team_name']
                                .toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['odiTeams'][index]['rating']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            items!['result']['odiTeams'][index]['points']
                                .toString(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                        ],
                      );
                    },
                    itemCount: 20,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
