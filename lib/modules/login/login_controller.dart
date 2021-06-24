import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pay_flow/shared/auth/auth_controller.dart';
import 'package:pay_flow/shared/models/user_model.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      UserModel? user;
      if (response != null) {
        user = UserModel(
            name: response.displayName!, photoUrl: response.photoUrl!);
      }
      authController.setUser(context, user);
    } catch (error) {
      print("Erro no login com google: $error");
    }
  }
}
