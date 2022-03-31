import 'package:flutter/material.dart';

import 'list_page.dart';


class Rightanspage extends StatefulWidget {
  const Rightanspage({Key? key}) : super(key: key);
  @override
  _RightanspageState createState() => _RightanspageState();
}
class _RightanspageState extends State<Rightanspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/fire-cracker.png",
            alignment: Alignment.center,
            width: 100,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Text(
            "Your Answer Is Correct",
            style: TextStyle(
                color: Color(0xffB53080),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
          ),
          const Text(
            "You Won",
            style: TextStyle(
                color: Color(0xffC78640),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "₹$wonprice",
            style: const TextStyle(
                color: Color(0xffC78640),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.064,
            width: MediaQuery.of(context).size.width * 0.46,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff1e1f23),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (index < 9) {
                      index++;
                      Navigator.of(context).pushNamed("/");
                    } else {
                      Navigator.of(context).pushNamed("game_over_page");
                    }
                  });
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Color(0xffA8A8A9),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
