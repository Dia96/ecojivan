import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/screens/nutrition.dart';
import 'package:ecojivan/screens/recipes.dart';
import 'package:flutter/material.dart';

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
               
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: DecoratedBox(
                  decoration: gradientdecoration,
                  child: FlexibleSpaceBar(                
                      centerTitle: true,                
                      background: Image.asset('assets/logo.png',
                      fit: BoxFit.cover,
                      ),
                      ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: nutrition),
                      Tab(icon: Icon(Icons.food_bank_rounded), text: recipe),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
          children: [
            NutrionalChart(),
            Recipe(),      
          ],
        ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}