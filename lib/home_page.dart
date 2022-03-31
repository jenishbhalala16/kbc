import 'package:flutter/material.dart';
import 'sorces.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  @override

  Color c = Colors.pink;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: IndexedStack(
              index: index,
              children: QuestionBanks.map((e) => QuestionScreen(e)).toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: IndexedStack(
              index: index,
              children: McqBanks.map((e) => Mcqscreen(e)).toList(),
            ),
          ),
        ],
      ),
    );
  }
  Widget QuestionScreen(Question q) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: q.color,
      child: Text(
        "${q.id}. ${q.question}",
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
      ),
    );
  }
  Widget Mcqscreen(Mcq q) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              McqButtons(
                  onpressed: () {
                    setState(() {
                      if (q.ans == "a") {
                        wonprice += 1000;
                        Navigator.of(context).pushNamed("right_ans_page");
                      } else {
                        Navigator.of(context).pushNamed("lose_page");
                      }
                    });
                  },
                  id: "a.",
                  texts: q.a),
              McqButtons(
                  onpressed: () {
                    setState(() {
                      if (q.ans == "b") {
                        wonprice += 1000;
                        Navigator.of(context).pushNamed("right_ans_page");
                      } else {
                        Navigator.of(context).pushNamed("lose_page");
                      }
                    });
                  },
                  id: "b.",
                  texts: q.b),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              McqButtons(
                  onpressed: () {
                    setState(() {
                      if (q.ans == "c") {
                        wonprice += 1000;
                        Navigator.of(context).pushNamed("right_ans_page");
                      } else {
                        Navigator.of(context).pushNamed("lose_page");
                      }
                    });
                  },
                  id: "c.",
                  texts: q.c),
              McqButtons(
                  onpressed: () {
                    setState(() {
                      if (q.ans == "d") {
                        wonprice += 1000;
                        Navigator.of(context).pushNamed("right_ans_page");
                      } else {
                        Navigator.of(context).pushNamed("lose_page");
                      }
                    });
                  },
                  id: "d.",
                  texts: q.d),
            ],
          ),
        ],
      ),
    );
  }

  McqButtons({required onpressed, required id, required texts}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.064,
      width: MediaQuery.of(context).size.width * 0.46,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xff1e1f23),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onpressed,
          child: Text(
            "$id $texts",
            style: const TextStyle(
                color: Color(0xffA8A8A9),
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
      ),
    );
  }
}
