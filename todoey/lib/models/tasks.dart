class Task {
  Task({this.name, this.isDone = false});
  final String name;
  bool isDone = false;

  void toggleDone() {
    isDone = !isDone;
  }
}
