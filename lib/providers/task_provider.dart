import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {

  List<String> _tasks = [];

  List<String> get tasks => _tasks;

  void addTask(String task){

    _tasks.add(task);
    notifyListeners();

  }

}