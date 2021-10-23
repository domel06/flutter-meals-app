import 'categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/screens/favourite_screen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({Key key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(title: Text("meals"),
      bottom: TabBar(
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.category),
            text: 'categories',
          ),
          Tab(
            icon: Icon(Icons.star),
            text: 'Favourites',
          )
        ],
      ),),
      body: TabBarView(children: <Widget>[
        CategoriesScreen(),FavouriteScreen()
      ],),

    ));
  }
}
