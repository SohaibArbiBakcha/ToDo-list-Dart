// ignore_for_file: prefer_const_constructors

import '../constants/colors.dart';
import '../widgets/todoItem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tbBGColor,
      appBar: appBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, bottom: 20),
                    child: Text(
                      "All Todos",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                  TodoItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tbBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tbBlack,
            size: 30,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/user.jpg'),
            ),
          )
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefix: Icon(
                Icons.search,
                color: tbBlack,
                size: 15,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 20, minWidth: 25),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(color: tbGrey))),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tbBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tbBlack,
            size: 30,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/user.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
