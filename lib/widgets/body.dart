import 'package:calculou/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _history = "";
  String _expression = "";

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    });
  }

  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              _history,
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
              _expression,
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
                callback: allClear,
                // textColor: Colors.blueGrey[900],
              ),
              Button(
                text: "C",
                fillColor: Colors.white38,
                callback: clear,
                // textColor: Colors.blueGrey[900],
              ),
              Button(
                text: "%",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
                callback: numClick,
              ),
              Button(
                text: "/",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
                callback: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "7",
                callback: numClick,
              ),
              Button(
                text: "8",
                callback: numClick,
              ),
              Button(
                text: "9",
                callback: numClick,
              ),
              Button(
                text: "*",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
                callback: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "4",
                callback: numClick,
              ),
              Button(
                text: "5",
                callback: numClick,
              ),
              Button(
                text: "6",
                callback: numClick,
              ),
              Button(
                text: "-",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
                callback: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "1",
                callback: numClick,
              ),
              Button(
                text: "2",
                callback: numClick,
              ),
              Button(
                text: "3",
                callback: numClick,
              ),
              Button(
                text: "+",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
                callback: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: ".",
                callback: numClick,
              ),
              Button(
                text: "0",
                callback: numClick,
              ),
              Button(
                text: "00",
                callback: numClick,
              ),
              Button(
                text: "=",
                fillColor: Colors.blueGrey[100],
                textColor: Colors.blueGrey[900],
                callback: evaluate,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
