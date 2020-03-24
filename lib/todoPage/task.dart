class Task {
  bool isChecked;
  final String name;
  int date;
  int month;
  int hr;
  int min;

  Task(
      {this.isChecked = false,
      this.name,
      this.date,
      this.month,
      this.hr,
      this.min});

  void toggleDone() {
    isChecked = !isChecked;
  }
}
