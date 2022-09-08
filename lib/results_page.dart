import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      @required this.bmi,
      @required this.result,
      @required this.interpretation})
      : super(key: key);

  final String? bmi;
  final String? result;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Your Results',
                style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: kActiveCardColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          result!.toUpperCase(),
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          bmi!,
                          style: TextStyle(
                              fontSize: 120, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Normal BMI Range',
                          style: kLabelTextColor,
                        ),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          interpretation!,
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      color: kAccentColor,
                      borderRadius: BorderRadius.circular(15)),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(fontSize: 20, letterSpacing: 5),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
