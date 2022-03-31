import 'dart:ui';
class Question {
  final int id;
  final String question;
  final Color color;

  Question({
    required this.id,
    required this.question,
    required this.color,
  });
}
class Mcq {
  final String a;
  final String b;
  final String c;
  final String d;
  final String ans;

  Mcq({
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.ans,
  }
  );
}
