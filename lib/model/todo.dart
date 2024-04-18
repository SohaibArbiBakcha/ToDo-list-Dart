class ToDo {
  String? id; // Unique identifier for the todo
  String? todoText; // Text content of the todo
  bool isDone; // Flag indicating whether the todo is completed or not

  ToDo(
      {required this.id,
      required this.todoText,
      this.isDone = false}); // Constructor for the ToDo class

  // ignore: empty_constructor_bodies
  static List<ToDo> todoList() => [
        // List of sample todos
        ToDo(
            id: '01',
            todoText: 'Morning things',
            isDone: true), // Sample todo with id, text, and marked as done
        ToDo(
            id: '02',
            todoText: 'Morning things 2',
            isDone: true), // Sample todo with id, text, and marked as done
        ToDo(
            id: '03',
            todoText: 'Morning things 3'), // Sample todo with id and text
        ToDo(
            id: '04',
            todoText: 'Morning things 4'), // Sample todo with id and text
        ToDo(
            id: '06',
            todoText: 'Morning things 6'), // Sample todo with id and text
        ToDo(
            id: '07',
            todoText: 'Morning things 7'), // Sample todo with id and text
      ];
}
