import 'package:flutter/material.dart';

class ProjectProvider extends ChangeNotifier {

  final List<String> _projects = [];

  List<String> get projects => _projects;

  void addProject(String name){
    _projects.add(name);
    notifyListeners();
  }

}