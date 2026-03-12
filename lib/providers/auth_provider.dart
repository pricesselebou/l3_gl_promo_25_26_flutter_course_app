import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {

  bool _isLoggedIn = false;
  bool _isLoading = false;

  bool get isLoggedIn => _isLoggedIn;
  bool get isLoading => _isLoading;

  void login(String email, String password){

    _isLoading = true;
    notifyListeners();

    Future.delayed(const Duration(seconds:2),(){

      _isLoggedIn = true;
      _isLoading = false;

      notifyListeners();

    });

  }

  void logout(){

    _isLoggedIn = false;
    notifyListeners();

  }

}