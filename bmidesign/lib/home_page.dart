import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:matcher/matcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 170;
  int weight = 70;
  int age = 20;
  bool isMale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff342230),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFeb1555),
        title: Text("BMI CALCULATOR"),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Card(
                              color: isMale == true
                                  ? Color(0xFFeb1555)
                                  : Color(0xff626189),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 70,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 3,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              color: isMale == false
                                  ? Color(0xFFeb1555)
                                  : Color(0xff626189),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 70,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    color: Color(0xff626189),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w800),
                        ),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$height",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 1.0,
                            max: 375.0,
                            divisions: 100,
                            activeColor: Colors.white,
                            inactiveColor: Color(0xFF8d8e98),
                            thumbColor: Color(0xFFeb1555),
                            label: 'Set volume value',
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Card(
                            color: Color(0xff626189),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0xFF848590),
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "$weight",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Color(0xFF4c4f5e),
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Color(0xFF4c4f5e),
                                      onPressed: () {
                                        setState(() {
                                          weight = weight + 1;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                      SizedBox(width: 20),
                      Expanded(
                          flex: 3,
                          child: Card(
                            color: Color(0xff626189),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color(0xFF848590),
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "$age",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Color(0xFF4c4f5e),
                                      onPressed: () {
                                        if (age > 0) {
                                          setState(() {
                                            age--;
                                          });
                                        }
                                      },
                                      child: Icon(Icons.remove),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                      backgroundColor: Color(0xFF4c4f5e),
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    //  var bmi = _weightnum / pow(height / 100, 2);
                    bmi = weight / (height * height) * 10000;
                    print("pppp ${bmi}");
                    if (bmi < 19) {
                      result = "You are under weight, Please eat more";
                    } else if (bmi < 24) {
                      result = "Your weight is Normal, Very good";
                    } else {
                      result = "You are over weight, Please eat less";
                    }
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                              color: Color(0xFFeb1555),
                              height: 240,
                              width: 400,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Center(
                                        child: Text(
                                      "BMI = $bmi",
                                      style: TextStyle(
                                          fontSize: 36, color: Colors.black),
                                    )),
                                    Center(
                                        child: Text(
                                      "Result = $result",
                                      style: TextStyle(
                                          fontSize: 36, color: Colors.black),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFeb1555),
                    ),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      "CALCULATE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  String? result;
  var bmi;
}
