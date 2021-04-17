
void main() {
  performTask();
}

void performTask() async {
  tastOne();
  String task2Data = await tastTwo();
  tastThree(task2Data);
}

void tastOne() {
  String taskOne = 'Task One Completed';
  print(taskOne);
}

Future<String> tastTwo() async {
  Duration threeSecond = Duration(seconds: 3);
  String? taskTwo;
  await Future.delayed(threeSecond, () {
    taskTwo = 'Task Two Completed';
    print(taskTwo);
  });
  return taskTwo!;
}

void tastThree(String task2Data) {
  String taskThree = 'Task Three Completed && $task2Data';
  print(taskThree);
}


