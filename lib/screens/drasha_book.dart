import 'package:bet_drasha/components/bottom_navigation.dart';
import 'package:bet_drasha/components/container.dart';
import 'package:bet_drasha/constants.dart';
import 'package:bet_drasha/provider/book_provider.dart';
import 'package:bet_drasha/screens/single_book.dart';
import 'package:flutter/material.dart';


class DrashaBook extends StatelessWidget {
  const DrashaBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drasha'),
          backgroundColor: kPrimaryColor,
        ),
        body: ListView.builder(
          itemCount: bookList.length,
          itemBuilder: ((context, index) {
          return Componant(
            title: bookList[index].title,
            color: Colors.white,
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SingleBook(book: bookList[index])));
            },
          );
        })),
        bottomNavigationBar: BottomNavigation(),);
  }
}
