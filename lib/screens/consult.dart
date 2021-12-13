import 'dart:math';
import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flappy_search_bar_ns/scaled_tile.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

import '../constraint.dart';

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class Consult extends StatefulWidget {
  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String? text) async {
    await Future.delayed(Duration(seconds: text!.length == 4 ? 10 : 1));
    if (isReplay) return [Post("Replaying !", "Replaying body")];
    if (text.length == 5) throw Error();
    if (text.length == 6) return [];
    List<Post> posts = [];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      posts.add(
        Post("$text $i", "body random number : ${random.nextInt(100)}"),
      );
    }
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Select your Concern',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SafeArea(
              child: SearchBar<Post>(
                searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
                headerPadding: EdgeInsets.symmetric(horizontal: 10),
                listPadding: EdgeInsets.symmetric(horizontal: 10),
                onSearch: _getALlPosts,
                searchBarController: _searchBarController,
                onError: (error) => Text('ERROR: ${error.toString()}'),
                cancellationWidget: Text("Cancel"),
                emptyWidget: Text("empty"),
                indexedScaledTileBuilder: (int index) =>
                    ScaledTile.count(1, index.isEven ? 2 : 1),
                header: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Most selected Issues',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      MultiSelectChipGroup(
                        items: [fever, gas, motion, blocked, sneeze, acne, rash, period, spots, pregnancy, darkcircle, vomit, headache, constipation, runny, abdominal, hairfall, cough],
                        onSelectionChanged: (values) {
                          print(values);
                        },
                        horizontalChipSpacing: 10,
                        selectedColor: Colors.green,
                        disabledColor: Colors.white,
                        leftCommonIcon: Icons.perm_identity,
                        leftIcons: [
                          Icons.alarm,
                          Icons.ac_unit,
                          Icons.accessibility,
                          Icons.account_balance,
                          Icons.perm_identity,
                          Icons.perm_identity,
                          Icons.alarm,
                          Icons.ac_unit,
                          Icons.accessibility,
                          Icons.account_balance,
                          Icons.perm_identity,
                          Icons.feed,
                          Icons.alarm,
                          Icons.ac_unit,
                          Icons.accessibility,
                          Icons.account_balance,
                          Icons.perm_identity,
                          Icons.perm_identity,        
                        ],
                      ),
                    ],
                  ),
                ),
                onCancelled: () {
                  print("Cancelled triggered");
                },
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 1,
                onItemFound: (Post? post, int index) {
                  return Text(post!.title);
                },
              ),
            ),
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        label: Text('Choose Doctor')
        ),
    );
  }
}
