// ignore_for_file: prefer_const_constructors // Ignore the lint rule for preferring const constructors
// Importing necessary dependencies and files
import '../model/todo.dart'; // Import the todo model
import '../constants/colors.dart'; // Import color constants
import 'package:flutter/material.dart';

// Defining the TodoItem widget, responsible for displaying individual todos
class TodoItem extends StatelessWidget {
  final ToDo todo; // Declare a variable to store the todo object
  final onToDoChange; // Declare a variable to store the function for handling todo item change
  final onDeleteItem; // Declare a variable to store the function for handling todo item deletion

  // Constructor for the TodoItem widget
  const TodoItem({
    Key? key,
    required this.todo,
    required this.onToDoChange,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChange(todo);
        }, // Call the function for handling todo item tap
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ), // Apply a line-through decoration if the todo is done
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ), // Define styling for the delete button container
          child: IconButton(
            icon: Icon(Icons.delete), // Display a delete icon
            color: Colors.white, // Set the color of the icon
            iconSize: 18,
            onPressed: () {
              onDeleteItem(todo.id);
            }, // Call the function for handling delete button press
          ),
        ),
      ),
    );
  }
}
