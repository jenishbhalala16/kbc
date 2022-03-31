import 'package:flutter/material.dart';
import 'sorces.dart';

class gameoverpage extends StatefulWidget {
  const gameoverpage({Key? key}) : super(key: key);
  @override
  _gameoverpageState createState() => _gameoverpageState();
}
class _gameoverpageState extends State<gameoverpage> {
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
          Text(
            "Congratulations",
            style: TextStyle(
                color: Colors.white.withOpacity(0.50),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
          ),
          const Text(
            "Gameover",
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 20,
                fontWeight: FontWeight.w400),
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
                    index = 0;
                    wonprice = 0;
                    Navigator.of(context).pushNamed("/");
                  });
                },
                child: const Text(
                  "Restart",
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