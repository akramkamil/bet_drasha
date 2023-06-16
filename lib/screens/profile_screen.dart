import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/provider/progress_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String id = "Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('imge'),
            Text('progress'),
             Padding(
                padding: const EdgeInsets.only(right :15.0, top: 8),
                child:   LinearProgressIndicator(
                value: Provider.of<ProgresProvider>(context, listen: true).progress /100,
                color: Colors.amber,
                backgroundColor:  const Color(0xff46322B),
                minHeight: 10,
                        ),
              )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(currentIndex: 1,),
    );
  }
}