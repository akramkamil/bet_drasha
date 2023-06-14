import 'package:bet_drasha/screens/login_screen.dart';
import 'package:bet_drasha/widgets/custom_button.dart';
import 'package:bet_drasha/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  static String id = "Signup Screen";
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
                  // ignore: unused_local_variable
                  final credental = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email!, password: password!);
                  Navigator.pushNamed(context, LoginScreen.id);
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
              title: 'Sign Up'),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('already have account'),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(' Log In', style: TextStyle(
                    color: Colors.blue
                  ),)),
            ],
          )
        ],
      ),
    );
  }
}
