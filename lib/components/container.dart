import 'package:bet_drasha/provider/progress_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Componant extends StatelessWidget {
  const Componant({super.key, this.title, this.color, this.ontap});
  final String? title;
  final Color? color;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(181, 188, 177, 1),
            border: Border.all(color: color!, style: BorderStyle.solid)),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 14),
        height: 64,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
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
    );
  }
}

