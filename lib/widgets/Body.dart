import 'package:calculou/widgets/Button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              "123",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.white24,
                ),
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          Container(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "123",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            alignment: Alignment(1, 1),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "AC",
                fillColor: Colors.white38,
                // textColor: Colors.blueGrey[900],
              ),
              Button(
                text: "C",
                fillColor: Colors.white38,
                // textColor: Colors.blueGrey[900],
              ),
              Button(
                text: "%",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
              ),
              Button(
                text: "/",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "7",
              ),
              Button(
                text: "8",
              ),
              Button(
                text: "9",
              ),
              Button(
                text: "*",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "4",
              ),
              Button(
                text: "5",
              ),
              Button(
                text: "6",
              ),
              Button(
                text: "-",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "1",
              ),
              Button(
                text: "2",
              ),
              Button(
                text: "3",
              ),
              Button(
                text: "+",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: ".",
              ),
              Button(
                text: "0",
              ),
              Button(
                text: "00",
              ),
              Button(
                text: "=",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
