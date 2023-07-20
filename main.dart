import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'constant.dart';
import 'buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const Calculator()
    );
  }
}
///////////////////////////////////////////////////////////////

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  var input = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body:
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(

            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      Text(input.toString(),style: StyleA,),
                      Text(result.toString(),style: StyleA,),

                    ],
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children:
                    [
                      Row(
                          children: [
                            Button (title: 'C', onPress:(){ input = '';setState(() {

                            });},
                            ),
                            Button (title: '%', onPress:(){ input += '%';setState(() {

                            });},
                            ),
                            Button (title: 'AC', onPress:(){ input = ''; result = ''; setState(() {

                            });},
                            ),
                            Button2 (title: '/', onPress:(){ input += '/';setState(() {

                            });},
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Button (title: '7', onPress:(){ input += '7';setState(() {

                            });},
                            ),
                            Button (title: '8', onPress:(){ input += '8';setState(() {

                            });},
                            ),
                            Button (title: '9', onPress:(){ input += '9';setState(() {

                            });},
                            ),
                            Button2 (title: 'x', onPress:(){ input += 'x';setState(() {

                            });},
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Button (title: '4', onPress:(){ input += '4';setState(() {

                            });},
                            ),
                            Button (title: '5', onPress:(){ input += '5';setState(() {

                            });},
                            ),
                            Button (title: '6', onPress:(){ input += '6';setState(() {

                            });},
                            ),
                            Button2 (title: '-', onPress:(){ input += '-';setState(() {

                            });},
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Button (title: '1', onPress:(){ input += '1';
                              setState(() {

                              });},
                            ),
                            Button (title: '2', onPress:(){ input += '2'; setState(() {

                            });},
                            ),
                            Button (title: '3', onPress:(){ input += '3';setState(() {

                            });},
                            ),
                            Button2 (title: '+', color: button2, onPress:(){ input += '+';setState(() {

                            });},
                            ),
                          ]
                      ),
                      Row(
                          children: [
                            Button (title: '0', onPress:(){ input += '0';setState(() {

                            });},
                            ),
                            Button (title: '.', onPress:(){ input += '.';setState(() {

                            });},
                            ),
                            Button (title: 'DEL', onPress:(){ input = input.substring(0,input.length-1);
                            setState(() {

                            });},
                            ),
                            Button2 (title: '=', onPress:(){ equalPress();
                              setState(() {

                            });},
                            ),
                          ]
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress(){

    String finalUserInput =input.replaceAll('x', '*');
     Parser p = Parser();
     Expression expression = p.parse(finalUserInput);
     ContextModel contextModel= ContextModel();

     double eval = expression.evaluate(EvaluationType.REAL, contextModel);
     result=eval.toString();
     }

  }







