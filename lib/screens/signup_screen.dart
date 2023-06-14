import 'package:bet_drasha/widgets/custom_button.dart';
import 'package:bet_drasha/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
              hintText: 'Email',
              onChanged: (data) {
                email = data;
              }),
          CustomTextField(
              hintText: 'Password',
              onChanged: (data) {
                password = data;
              }),
          CustomButton(
              onTap: () async {
                try {
                  final credental = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email!, password: password!);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              },
              title: 'Sign Up')
        ],
      ),
    );
  }
}
