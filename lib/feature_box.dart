import 'package:flutter/material.dart';
import 'package:personal_assistent/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String description;
  const FeatureBox({Key? key,
    required this.color,
    required this.headerText,
    required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 15,bottom: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(headerText,style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(description,
                style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,

              ),),
            ),

          ],
        ),
      ),
    );
  }
}
