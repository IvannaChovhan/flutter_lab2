import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_instagram/widgets/stories.dart';
import 'package:my_instagram/widgets/message.dart';
import 'package:my_instagram/widgets/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Ivanna Chovhan TI-82",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int _currentIndex = 0;

final tabs = [
  HomeBody(),
  SearchBody(),
  AddBody(),
  FavoriteBody(),
  AccountBody()
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              onPressed: () {
                Text("Заглушка");
              },
              color: Colors.black,
              iconSize: 30,
            ),
            Text(
              "Instagram",
              style: GoogleFonts.lobster(fontSize: 25),
            ),
            Transform.rotate(
                angle: -35 * pi / 180,
                child: IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatScreen()));
                  },
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(
              Icons.add_box,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: "Account box",
            icon: Icon(
              Icons.account_box,
            ),
            backgroundColor: Colors.white,
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      // mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 100,
          child: StoriesList(),
        ),
        Divider(
          color: Colors.white,
        ),
        Post(
          mainPhotoUrl:
              "https://images.unsplash.com/photo-1628174392663-3e7218959b07?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
          nickname: "lorem_ipsum",
          userAvatar:
              "https://images.unsplash.com/photo-1599185706027-f1b66448a7a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80",
          comment: "Lorem Ipsum is simply dummy",
          userPhoto:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        ),
        Post(
          mainPhotoUrl:
              "https://images.unsplash.com/photo-1607830510413-cecc83a1fb25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
          nickname: "lorem_ipsum",
          userAvatar:
              "https://images.unsplash.com/photo-1599185706027-f1b66448a7a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80",
          comment: "Lorem Ipsum is simply dummy",
          userPhoto:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        ),
        Post(
          mainPhotoUrl:
              "https://images.unsplash.com/photo-1511745564573-fec5d8b7e907?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
          nickname: "lorem_ipsum",
          userAvatar:
              "https://images.unsplash.com/photo-1599185706027-f1b66448a7a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80",
          comment: "Lorem Ipsum is simply dummy",
          userPhoto:
              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
        ),
      ],
    );
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Поиск Заглушка"),
    );
  }
}

class AddBody extends StatelessWidget {
  const AddBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Добавить Заглушка"),
    );
  }
}

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Любимые Заглушка"),
    );
  }
}

class AccountBody extends StatelessWidget {
  const AccountBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Акаунт Заглушка"),
    );
  }
}
