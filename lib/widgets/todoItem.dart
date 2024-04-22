// ignore_for_file: prefer_const_constructors // Ignore the lint rule for preferring const constructors, prefer_const_constructors, use_super_parameters, file_names

import '../model/todo.dart'; // Import the todo model
import '../constants/colors.dart'; // Import color constants
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo; // Define a todo object

  const TodoItem({Key? key, required this.todo})
      : super(key: key); // Constructor for the TodoItem widget

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {}, // Placeholder function for handling todo item tap
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white, // Set the background color of the tile
          leading: Icon(
            todo.isDone
                ? Icons.check_box
                : Icons
                    .check_box_outline_blank, // Display a check box icon based on whether the todo is done or not
            color: tdBlue, // Set the color of the icon
          ),
          title: Text(
            todo.todoText!, // Display the text of the todo
            style: TextStyle(
                fontSize: 16,
                color: tbBlack,
                decoration: todo.isDone
                    ? TextDecoration.lineThrough
                    : null), // Apply a line-through decoration if the todo is done
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed,
                borderRadius: BorderRadius.circular(
                    5)), // Define styling for the delete button container
            child: IconButton(
              icon: Icon(Icons.delete), // Display a delete icon
              color: Colors.white, // Set the color of the icon
              iconSize: 18,
              onPressed:
                  () {}, // Placeholder function for handling delete button press
            ),
          ),
        ));
  }
}
