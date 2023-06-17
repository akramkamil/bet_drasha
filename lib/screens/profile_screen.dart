import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:bet_drasha/provider/progress_provider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String id = "Profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo/logo.png',
              height: 40,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/profile/imageProfile.jpeg',
                height: 110,
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Name: Akram Kamil'),
            Text('Email: Akram_Kamil@gmail.com'),
              ],
            ),
            CircularPercentIndicator(
              percent: Provider.of<ProgresProvider>(context, listen: true)
                      .progress /
                  100,
              progressColor: Colors.amber,
              backgroundColor: const Color(0xff46322B),
              lineWidth: 10,
              radius: 40,
              center: Text(
                  (Provider.of<ProgresProvider>(context, listen: true)
                                  .progress /
                              100)
                          .toString() +
                      "%"),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 1,
      ),
    );
  }
}
