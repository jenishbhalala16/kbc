import 'package:flutter/material.dart';
import 'sorces.dart';


class losepage extends StatefulWidget {
  const losepage({Key? key}) : super(key: key);
  @override
  _losepageState createState() => _losepageState();
}
class _losepageState extends State<losepage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/lose.png",
            alignment: Alignment.center,
            width: 100,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Text(
            "oops!",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
            width: MediaQuery.of(context).size.width,
          ),
          const Text(
            "Sorry Your are \n the lose",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 20,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
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
                  "Try again",
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