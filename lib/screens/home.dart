// ignore_for_file: prefer_const_constructors // Ignore the lint rule for preferring const constructors, prefer_const_constructors, must_be_immutable

import '../model/todo.dart'; // Import the todo model
import '../constants/colors.dart'; // Import color constants
import '../widgets/todoItem.dart'; // Import the todo item widget
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key}); // Constructor for the Home widget

  List<ToDo> todosList = ToDo.todoList(); // List to store todo items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tbBGColor, // Set the background color of the scaffold
      appBar:
          buildAppBar(), // Call the buildAppBar method to create the app bar
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchBox(), // Call the searchBox method to create the search box
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
                  // Display each todo item using TodoItem widget
                  for (ToDo todoo in todosList) TodoItem(todo: todoo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to create the search box widget
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

  // Method to create the app bar widget
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
