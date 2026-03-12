import 'package:flutter/material.dart';

class ProjectProvider extends ChangeNotifier {

  List<String> _projects = [];

  List<String> get projects => _projects;

  void addProject(String project){

    _projects.add(project);
    notifyListeners();

  }

}