import 'package:flutter/material.dart';

import 'playername.dart';

String one = "";
String two = "";
String three = "";
String four = "";
String five = "";
String six = "";
String seven = "";
String eight = "";
String nine = "";
bool xx = true;
bool first = true;
bool showwinner = false;
String winner = "";
bool enablebutton = true;
bool resetvisible = false;
bool showchance = true;
bool celebrate = false;

bool showtie = false;
String yourname = "";
String hib = "";
String onename = "";
String twoname = "";
int onescore = 0;

int twoscore = 0;
void main() {
  runApp(const MaterialApp(
    home: PlayerName(),
    debugShowCheckedModeBanner: false,
  ));
}
