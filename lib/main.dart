import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
      home: Calculator()));
}

class Calculator extends StatelessWidget {
  const Calculator() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Calculator'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Text('0'),
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.white,
              ),
              Row(
                children: [
                  LongButton(buttonText: 'C'),
                  OperatorButton(operator: '<-'),
                  // Container(
                  //   child: Text('Other element'),
                  //   height: 100,
                  //   width: 100,
                  //   color: Colors.blueGrey,
                  // ),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '7'),
                  NumberButton(number: '8'),
                  NumberButton(number: '9'),
                  OperatorButton(operator: '/'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '4'),
                  NumberButton(number: '5'),
                  NumberButton(number: '6'),
                  OperatorButton(operator: 'x'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '1'),
                  NumberButton(number: '2'),
                  NumberButton(number: '3'),
                  OperatorButton(operator: '-'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '0'),
                  NumberButton(number: '.'),
                  OperatorButton(operator: '='),
                  OperatorButton(operator: '+'),
                ],
              ),
            ],
          ),
          // bottomNavigationBar: Text('Buttons of some shape go here'),
        )
    );
  }
}

class NumberButton extends StatelessWidget {

  final String number;
  final Color color = Colors.black87;
  const NumberButton({ required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
        flex: 25,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.1,
          child: ElevatedButton(
            child: Text(number),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        )
    );

  }
}

class OperatorButton extends StatelessWidget {

  final String operator;
  final Color color = Colors.blue;
  const OperatorButton({ required this.operator, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
        flex: 25,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.1,
          child: ElevatedButton(
            child: Text(operator),
            onPressed: () {},
          ),
        )
    );

  }
}

class LongButton extends StatelessWidget {

  final String buttonText;
  final Color color = Colors.grey;
  const LongButton({ required this.buttonText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
        flex: 75,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.1,
          child: ElevatedButton(
            child: Text(buttonText),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.grey,
            ),
          ),
        )
    );

  }
}