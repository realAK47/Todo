class Task {
  final String titleName;
  bool isChecked;
  Task({this.titleName, this.isChecked = false});

  void isToogleDone() {
    isChecked = !isChecked;
  }
}
