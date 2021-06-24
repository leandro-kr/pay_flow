import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_flow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      this.saveUser(user);
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      Navigator.pushReplacementNamed(context, "/login");
    }
  }

  Future<void> saveUser(UserModel user) async {
    final _instance = await SharedPreferences.getInstance();
    _instance.setString("user", user.toJson());
    return;
  }

  Future<void> getUser(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
    final _instance = await SharedPreferences.getInstance();
    if (_instance.containsKey("user")) {
      final String? user = _instance.getString("user");
      if (user != null) this.setUser(context, UserModel.fromJson(user));
    } else {
      this.setUser(context, null);
    }
    return;
  }
}
