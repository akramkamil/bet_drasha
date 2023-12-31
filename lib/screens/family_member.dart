import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/constants.dart';
import 'package:flutter/material.dart';
import 'package:bet_drasha/components/item.dart';
import 'package:bet_drasha/provider/family_members_provider.dart';

class FamilyMember extends StatelessWidget {
  const FamilyMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Member'),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
        itemCount: familyMemberList.length,
        itemBuilder: (context, index) {
          return Item(word: familyMemberList[index]);
        },
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
