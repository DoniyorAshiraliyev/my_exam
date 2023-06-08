import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(
        color: const Color(0xFF8E97FD),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/basics.png",
                height: 80,
                width: 80,
              )),
          const Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("   Basics" ,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                Text("Course" ,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "3-10 MIN",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 25),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,


                    ),
                    child:const Text(
                      "START",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ),
                ],

              ),
            ),
          )
        ],
      ),
    );
  }
}
