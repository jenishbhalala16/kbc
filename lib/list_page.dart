import 'package:flutter/material.dart';
import 'sorces.dart';

int index = 0;
int wonprice = 0;

List<Question> QuestionBanks = <Question>[

  Question(id: 1, question: "Who hit 6 six in 1 over in T20 Worldcup 2007?", color: Colors.redAccent),
  Question(id: 2, question: "Who is present president of india?", color: Colors.purple),
  Question(id: 3, question: "Who is the present prime minister of india?  ", color: Colors.indigoAccent),
  Question(id: 4, question: "which player hit 100 century in cricket?", color: Colors.greenAccent),
  Question(id: 5, question: "highest run chase in ODI?", color: Colors.lightGreenAccent),
  Question(id: 6, question: "All time highest box office collection movie in the world?", color: Colors.orange),
  Question(id: 7, question: "which player hit most runs in IPL2021?", color: Colors.purple),
  Question(id: 8, question: "Who is the purple cap holder in IPL2021?  ", color: Colors.brown),
  Question(id: 9, question: "Most viewed video on youtube?", color: Colors.amber),
  Question(id: 10, question: "Most disliked video on youtube", color: Colors.blue),
];

List<Mcq> McqBanks = <Mcq>[

  Mcq(
    a: "kieron Pollard",
    b: "chris gayle",
    c: "Tom latham",
    d: "Yuvraj singh",
    ans: "d",
  ),

  Mcq(
    a: "Ram Nath kovind",
    b: "Narendra modi",
    c: "Amit shah",
    d: "Arvind kejrival ",
    ans: "a",
  ),

  Mcq(
    a: "Indira gandhi",
    b: "manmohan singh",
    c: "Atal bihari vajpayee ",
    d: "Narendra modi",
    ans: "d",
  ),

  Mcq(
    a: "Ms dhoni",
    b: "Virat kohli",
    c: "Sachin tendulkar",
    d: "chris gayle",
    ans: "c",
  ),

  Mcq(
    a: "390",
    b: "431",
    c: "438",
    d: "450",
    ans: "c",
  ),

  Mcq(
    a: "Avengers: infinity war",
    b: "Avatar",
    c: "Spider-man:no way home",
    d: "Avengers: endgame",
    ans: "b",
  ),

  Mcq(
    a: "faf du plassis",
    b: "Kl rahul",
    c: "Shikhar dhavan",
    d: "Ruturaj gaikwad",
    ans: "d",
  ),

  Mcq(
    a: "Munaf patel",
    b: "Harshal patel",
    c: "Parthiv patel",
    d: "Irfan pathan",
    ans: "b",
  ),

  Mcq(
    a: "baby shark dance",
    b: "Despacito",
    c: "Shape of you",
    d: "See you again",
    ans: "a",
  ),

  Mcq(
    a: "baby shark dance",
    b: "sadak-2 Trailer",

    c: "baby",
    d: "Youtube rewind 2018",
    ans: "d",

  ),
];
