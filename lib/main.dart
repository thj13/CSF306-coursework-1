import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
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
            children: [
              Container(
                child: Text('Results go here'),
              ),
              Row(
                children: [
                  Text('Cancel bar element one'),
                  Text('Cancel bar element two'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '7'),
                  NumberButton(number: '8'),
                  NumberButton(number: '9'),
                  Text('/ Button here'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '4'),
                  NumberButton(number: '5'),
                  NumberButton(number: '6'),
                  Text('x Button here'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '1'),
                  NumberButton(number: '2'),
                  NumberButton(number: '3'),
                  Text('- Button here'),
                ],
              ),
              Row(
                children: [
                  NumberButton(number: '0'),
                  NumberButton(number: '.'),
                  Text('= Button here'),
                  Text('+ Button here'),
                ],
              ),
            ],
          ),

          bottomNavigationBar: Text('Buttons of some shape go here'),
        )
    );
  }
}

class RainbowSlice extends StatelessWidget {
  final Color color;
  const RainbowSlice({required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: color, child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('hello', style: TextStyle(fontSize: 32)),
    )));
  }
}

class NumberButton extends StatelessWidget {

  final String number;
  final Color color = Colors.black87;
  const NumberButton({ required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: Container(
            color: color,
            child: Text(number),
        )
    );

  }

}