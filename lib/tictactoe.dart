import 'package:flutter/material.dart';
import 'main.dart';

class Tictactoe extends StatefulWidget {
  const Tictactoe({super.key});

  @override
  State<Tictactoe> createState() => _TictactoeState();
}

class _TictactoeState extends State<Tictactoe> {
  Color buttoncolor = const Color.fromARGB(255, 167, 172, 255);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 170,
            ),
            Visibility(
              visible: showchance,
              child: Text(
                xx ? onename + "'s chance" : twoname + "'s chance",
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (one == "") {
                              if (xx) {
                                one = "X";
                              } else {
                                one = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    one,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (two == "") {
                              if (xx) {
                                two = "X";
                              } else {
                                two = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    two,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (three == "") {
                              if (xx) {
                                three = "X";
                              } else {
                                three = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    three,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (four == "") {
                              if (xx) {
                                four = "X";
                              } else {
                                four = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    four,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (five == "") {
                              if (xx) {
                                five = "X";
                              } else {
                                five = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    five,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (six == "") {
                              if (xx) {
                                six = "X";
                              } else {
                                six = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    six,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (seven == "") {
                              if (xx) {
                                seven = "X";
                              } else {
                                seven = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    seven,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (eight == "") {
                              if (xx) {
                                eight = "X";
                              } else {
                                eight = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    eight,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: enablebutton
                      ? () {
                          setState(() {
                            if (nine == "") {
                              if (xx) {
                                nine = "X";
                              } else {
                                nine = "O";
                              }
                              xx = !xx;
                              result();
                            }
                          });
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size.square(70), primary: buttoncolor),
                  child: Text(
                    nine,
                    style: const TextStyle(
                        fontSize: 55,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: showwinner,
              child: Text(
                winner + ", won the match.",
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Visibility(
              visible: showtie,
              child: const Text(
                "It's a Tie",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Visibility(
              visible: resetvisible,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    reset();
                  });
                },
                child: const Text(
                  "RESET",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  onename + ": " + onescore.toString(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 226, 5, 5), fontSize: 25),
                ),
                const Text(
                  "   |   ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Text(
                  twoname + ": " + twoscore.toString(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 226, 5, 5), fontSize: 25),
                )
              ],
            ),
            const SizedBox(height: 20),
            Visibility(
              visible: celebrate,
              child: Image.asset('images/celebrate.png', height: 185),
            )
          ],
        ),
      ),
    );
  }
}

void result() {
  if ([one, two, three].every((element) => (element == "X"))) {
    winner = onename;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    showchance = false;
    onescore = onescore + 1;
    celebrate = true;

    //X wins
  } else if ([four, five, six].every((element) => element == "X")) {
    winner = onename;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    showchance = false;
    celebrate = true;
    //X wins
  } else if ([seven, eight, nine].every((element) => element == "X")) {
    winner = onename;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    showchance = false;
    celebrate = true;
    //X wins
  } else if ([one, four, seven].every((element) => element == "X")) {
    winner = onename;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    celebrate = true;
    //X wins
  } else if ([two, five, eight].every((element) => element == "X")) {
    winner = onename;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    celebrate = true;
    //X wins
  } else if ([three, six, nine].every((element) => element == "X")) {
    winner = onename;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    celebrate = true;
    //X wins
  } else if ([one, five, nine].every((element) => element == "X")) {
    winner = onename;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    celebrate = true;
    //X wins
  } else if ([three, five, seven].every((element) => element == "X")) {
    winner = onename;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    onescore = onescore + 1;
    celebrate = true;
    //X wins
  } else if ([one, two, three].every((element) => (element == "O"))) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;

    //X wins
  } else if ([four, five, six].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([seven, eight, nine].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([one, four, seven].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([two, five, eight].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([three, six, nine].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([one, five, nine].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([three, five, seven].every((element) => element == "O")) {
    winner = twoname;
    showchance = false;
    showwinner = true;
    enablebutton = false;
    resetvisible = true;
    twoscore = twoscore + 1;
    celebrate = true;
    //X wins
  } else if ([one, two, three, four, five, six, seven, eight, nine]
      .every((element) => element == "O" || element == "X")) {
    showtie = true;
    showchance = false;
    enablebutton = false;
    resetvisible = true;
  }
}

void reset() {
  one = "";
  two = "";
  three = "";
  four = "";
  five = "";
  six = "";
  seven = "";
  eight = "";
  nine = "";

  showwinner = false;
  winner = "";
  enablebutton = true;
  resetvisible = false;
  first = !first;
  xx = first;
  showtie = false;
  showchance = true;
  celebrate = false;
}
