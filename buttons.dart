import 'package:flutter/material.dart';
import 'constant.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Button({super.key, required this.title, this. color= button2, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
              color: button,
              borderRadius: BorderRadius.circular(20),
             boxShadow: [
               BoxShadow(
                 color: button,
                 blurRadius: 10,
               )
             ]
            ),
            child: Center(
              child: Text(title, style: Style,),
            ),
          ),
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const Button2({super.key, required this.title, this. color= button2, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 70,
            width: 80,
            decoration: BoxDecoration(
                color: button2,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: button2,
                    blurRadius: 10,
                  )
                ]
            ),
            child: Center(
              child: Text(title, style: Style,),
            ),
          ),
        ),
      ),
    );
  }
}