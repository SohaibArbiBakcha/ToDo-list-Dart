class ToDo {
  String? id; // Unique identifier for the todo
  String? todoText; // Text content of the todo
  bool isDone; // Flag indicating whether the todo is completed or not

  // Constructor for the ToDo class
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  // Static method to generate a list of sample todos
  static List<ToDo> todoList() => [
        // List of sample todos
        ToDo(
          id: '01',
          todoText: 'Buy groceries',
          isDone: false,
        ), // Sample todo: Buy groceries, not done yet
        ToDo(
          id: '02',
          todoText: 'Call mom',
          isDone: true,
        ), // Sample todo: Call mom, already done
        ToDo(
          id: '03',
          todoText: 'Finish homework',
          isDone: false,
        ), // Sample todo: Finish homework, not done yet
        ToDo(
          id: '04',
          todoText: 'Go for a run',
          isDone: false,
        ), // Sample todo: Go for a run, not done yet
        ToDo(
          id: '05',
          todoText: 'Read a book',
          isDone: true,
        ), // Sample todo: Read a book, already done
        ToDo(
          id: '06',
          todoText: 'Write report',
          isDone: false,
        ), // Sample todo: Write report, not done yet
        ToDo(
          id: '07',
          todoText: 'Pay bills',
          isDone: false,
        ), // Sample todo: Pay bills, not done yet
        ToDo(
          id: '08',
          todoText: 'Attend meeting',
          isDone: true,
        ), // Sample todo: Attend meeting, already done
        ToDo(
          id: '09',
          todoText: 'Clean the house',
          isDone: false,
        ), // Sample todo: Clean the house, not done yet
        ToDo(
          id: '10',
          todoText: 'Watch movie',
          isDone: false,
        ), // Sample todo: Watch movie, not done yet
      ];
}
