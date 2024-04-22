// ignore_for_file: prefer_const_constructors // Ignore the lint rule for preferring const constructors

// Importing necessary dependencies and files
import '../model/todo.dart'; // Import the todo model
import '../constants/colors.dart'; // Import color constants
import '../widgets/todoItem.dart'; // Import the todo item widget
import 'package:flutter/material.dart';

// Defining the Home widget, responsible for displaying the todo list
class Home extends StatefulWidget {
  Home({super.key}); // Constructor for the Home widget

  @override
  State<Home> createState() =>
      _HomeState(); // Creating state for the Home widget
}

// Defining the state of the Home widget
class _HomeState extends State<Home> {
  // Constructor for the Home state
  List<ToDo> todosList = ToDo.todoList(); // List to store todo items
  List<ToDo> foundTodo = []; // List to store filtered todo items
  final todoController =
      TextEditingController(); // Controller for todo text field

  @override
  void initState() {
    foundTodo = todosList; // Initialize foundTodo list with all todos
    super.initState();
  }

  // Building the UI of the Home widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tbBGColor, // Set the background color of the scaffold
      appBar:
          buildAppBar(), // Call the buildAppBar method to create the app bar
      body: Stack(
        children: [
          Container(
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
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                      // Display each todo item using TodoItem widget
                      for (ToDo todoo in foundTodo.reversed)
                        TodoItem(
                          todo: todoo,
                          onToDoChange: handleTodoChange,
                          onDeleteItem: deleteTodoItem,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10,
                            spreadRadius: 0.0)
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: todoController,
                      decoration: InputDecoration(
                          hintText: 'Add new Todo', border: InputBorder.none),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 36, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tdBlue,
                        minimumSize: Size(60, 60),
                        elevation: 10),
                    onPressed: () {
                      addTodoItem(todoController.text);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // Method to add a new todo item
  void addTodoItem(String todoText) {
    setState(() {
      // Add new todo with current timestamp as ID
      todosList.add(ToDo(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          todoText: todoText));
    });
    todoController.clear(); // Clear the text field after adding todo
  }

  // Method to filter todo items based on entered keyword
  void runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      // If search field is empty, display all todos
      results = todosList;
    } else {
      // Filter todos based on entered keyword
      results = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      foundTodo = results; // Update foundTodo list with filtered results
    });
  }

  // Method to create the search box widget
  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
          onChanged: (value) =>
              runFilter(value), // Call runFilter on text change
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

  // Method to handle changes in todo item status
  void handleTodoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone; // Toggle the isDone status of todo item
    });
  }

  // Method to delete a todo item
  void deleteTodoItem(String id) {
    setState(() {
      todosList
          .removeWhere((item) => item.id == id); // Remove todo with given ID
    });
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
              child: Image.asset('assets/images/user.jpg'), // Placeholder image
            ),
          )
        ],
      ),
    );
  }
}
