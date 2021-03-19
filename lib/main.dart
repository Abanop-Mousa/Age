import 'package:flutter/material.dart';

import 'age.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var mycontroller = TextEditingController();
    var b = Colors.black;
    var g = Colors.green;
    var w = Colors.white;
    var gr = Colors.grey;

    return MaterialApp(
      title: 'Age',
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculate your Age'),
          backgroundColor: gr,
        ),
        backgroundColor: b,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.cake,
                        color: g,
                      ),
                      labelText: "year",
                      labelStyle:
                          TextStyle(fontSize: 15, color: g, shadows: <Shadow>[
                        Shadow(color: g, blurRadius: 20),
                        Shadow(color: Colors.greenAccent, blurRadius: 20)
                      ]),
                      hintText: "please enter your birth year :",
                      hintStyle: TextStyle(color: w, fontSize: 15),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: g, width: 2))),
                  controller: mycontroller,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("Get Age"),
                color: Colors.green,
                onPressed: () => setState(() {
                  AgeCalculator(int.parse(mycontroller.text));
                }),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "yout age is ${AgeCalculator.age} years old",
                  style: TextStyle(fontSize: 15),
                ),
                color: Colors.green,
              )
            ],
          )),
        ),
      ),
    );
  }
}
