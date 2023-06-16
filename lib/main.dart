import 'package:bet_drasha/firebase_options.dart';
import 'package:bet_drasha/provider/progress_provider.dart';
import 'package:bet_drasha/screens/home_screen.dart';
import 'package:bet_drasha/screens/login_screen.dart';
import 'package:bet_drasha/screens/profile_screen.dart';
import 'package:bet_drasha/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(BetEdrashApp(isLoggedIn: isLoggedIn,));
}


// ignore: must_be_immutable
class BetEdrashApp extends StatelessWidget {
  BetEdrashApp({super.key, required this.isLoggedIn});
  final isLoggedIn;
  ProgresProvider? progress;
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) {
        return ProgresProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeScreen.id:(context) => HomeScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          SignupScreen.id:(context) => SignupScreen(),
          ProfileScreen.id: (context) => ProfileScreen(),
        },
        initialRoute: isLoggedIn ? HomeScreen.id :  LoginScreen.id,
      ),
    );
  }
}


