import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
    runApp(const MaterialApp(
        home: Calculator()
    )
  );
}
///
/// This class is used to construct the UI design for a simple
/// calculator containing non-functional stateless widgets
///
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
              ResultsSection(display: '0',),
              Row(
                children: const [
                  LongButton(buttonText: 'C'),
                  OperatorButton(operator: '<-'),
                ],
              ),
              Row(
                children: const [
                  NumberButton(number: '7'),
                  NumberButton(number: '8'),
                  NumberButton(number: '9'),
                  OperatorButton(operator: '/'),
                ],
              ),
              Row(
                children: const [
                  NumberButton(number: '4'),
                  NumberButton(number: '5'),
                  NumberButton(number: '6'),
                  OperatorButton(operator: 'x'),
                ],
              ),
              Row(
                children: const [
                  NumberButton(number: '1'),
                  NumberButton(number: '2'),
                  NumberButton(number: '3'),
                  OperatorButton(operator: '-'),
                ],
              ),
              Row(
                children: const [
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

///
/// This class will create a results section for the calculator
/// this widget is responsive to the screen size and will populate
/// 40% of the screen height
///
class ResultsSection extends StatelessWidget{

  final String display;

  const ResultsSection({Key? key, required this.display}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        display,
        textAlign: TextAlign.right,
        style: const TextStyle(
        fontSize: 50,
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.blue[100],
    );
  }

}

///
/// Used to construct a number button on for the calculator
/// where the button will be black and responsive to screen size
///
class NumberButton extends StatelessWidget {

  final String number;
  final Color _color = Colors.black87;
  const NumberButton({ required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
        flex: 25,
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.1,
          child: ElevatedButton(
            child: Text(
              number,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
            ),
          ),
        )
    );

  }
}

///
/// Used to construct an operator button on for the calculator
/// where the button will be blue and responsive to screen size
///
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
            child: Text(
                operator,
                style: const TextStyle(
                  fontSize: 20,
                ),
            ),
            onPressed: () {},
          ),
        )
    );

  }
}

///
/// Used to construct a clear button on for the calculator
/// where the button will be grey and responsive to screen size
/// this widget will take up 75% of screen width
///
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
            child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 20,
                ),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[600],
            ),
          ),
        )
    );

  }
}