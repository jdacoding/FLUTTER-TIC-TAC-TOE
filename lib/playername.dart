import 'package:flutter/material.dart';
import 'main.dart';
import 'tictactoe.dart';

class PlayerName extends StatefulWidget {
  const PlayerName({super.key});

  @override
  State<PlayerName> createState() => _PlayerNameState();
}

class _PlayerNameState extends State<PlayerName> {
  final playeronecontrol = TextEditingController();
  final playertwocontrol = TextEditingController();
  bool clearone = false;
  bool cleartwo = false;
  bool showplayererror = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            "TIC TAC TOE",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset('images/tictactoe.png', height: 160),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Enter Player Names",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: TextField(
              controller: playeronecontrol,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  if (value == "") {
                    clearone = false;
                  } else {
                    clearone = true;
                  }
                });
              },
              decoration: InputDecoration(
                  suffixIcon: Visibility(
                    visible: clearone,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            clearone = false;
                            playeronecontrol.clear();
                          });
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.red,
                        )),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset(
                      'images/x.png',
                      color: Colors.blue,
                      height: 0,
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: "Player Name",
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 248, 177, 177), width: 2)),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 2))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: TextField(
              controller: playertwocontrol,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  if (value == "") {
                    cleartwo = false;
                  } else {
                    cleartwo = true;
                  }
                });
              },
              decoration: InputDecoration(
                  suffixIcon: Visibility(
                    visible: cleartwo,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            cleartwo = false;
                            playertwocontrol.clear();
                          });
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: Colors.red,
                        )),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset(
                      'images/o.png',
                      color: Colors.blue,
                      height: 0,
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  hintText: "Player Name",
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 248, 177, 177), width: 2)),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 2))),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              if (playeronecontrol.text != "" && playertwocontrol.text != "") {
                setState(() {
                  showplayererror = false;
                });
                one = "";
                two = "";
                three = "";
                four = "";
                five = "";
                six = "";
                seven = "";
                eight = "";
                nine = "";
                first = true;
                showchance = true;
                onescore = 0;
                twoscore = 0;
                resetvisible = false;
                showwinner = false;
                showtie = false;
                celebrate = false;
                winner = "";
                enablebutton = true;
                xx = true;
                onename = playeronecontrol.text;
                twoname = playertwocontrol.text;

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Tictactoe();
                }));
              } else {
                setState(() {
                  showplayererror = true;
                });
              }
            },
            child: const Text(
              "PLAY",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Visibility(
              visible: showplayererror,
              child: const Text(
                "Please enter valid name.",
                style: TextStyle(color: Colors.red, fontSize: 25),
              ))
        ]),
      ),
    );
  }
}
