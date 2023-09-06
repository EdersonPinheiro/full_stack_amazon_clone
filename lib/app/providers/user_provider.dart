import 'package:amazon_clone/app/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
      id: '',
      name: '',
      email: '',
      password: '',
      address: '',
      type: '',
      token: '');

  User get user => _user;

  void setUser(String userData) {
    _user = User.fromJson(userData);
    notifyListeners();
  }
}