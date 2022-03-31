import 'package:flutter/material.dart';
import 'package:kbc/rightans_page.dart';

import 'game_over_page.dart';
import 'home_page.dart';
import 'lose_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (container) => const homepage(),
      "right_ans_page": (container) => const Rightanspage(),
      "game_over_page": (container) => const gameoverpage(),
      "lose_page": (container) => const losepage(),
    },
  ),
  );
}
