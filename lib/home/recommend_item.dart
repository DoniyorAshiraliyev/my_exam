
import 'package:flutter/material.dart';

class MyRecommentItem extends StatelessWidget {
  final String text;
  final String image;

  const MyRecommentItem({Key? key,required this.text,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 115,
          width: 165,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(163, 213, 184, 1),
              image: DecorationImage(
                image: AssetImage("assets/images/$image"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Text("Meditation 3-10 min",
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Colors.grey)),
      ],
    );
  }
}