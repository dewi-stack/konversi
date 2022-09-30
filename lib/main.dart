import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double fahrenheit = 0;
  double reamur = 0;

  // rumusKonversi() {
  //   setState(() {
  //     inputUser = double.parse(etInput.text);
  //     kelvin = inputUser + 273;
  //     fahrenheit = (inputUser * (9 / 5)) + 32;
  //     reamur = 4 / 5 * inputUser;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("KONVERSI SUHU"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(hintText: "Masukkan Suhu Disini"),
                controller: etInput,
                keyboardType: TextInputType.number,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Farenheit",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$fahrenheit',
                        style: const TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Kelvin",
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$kelvin',
                        style: const TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Reamur",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '$reamur',
                        style: const TextStyle(fontSize: 35),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      inputUser = double.parse(etInput.text);
                      kelvin = inputUser + 273;
                      fahrenheit = (inputUser * (9 / 5)) + 32;
                      reamur = 4 / 5 * inputUser;
                    });
                  },
                  child: const Text('KONVERSIKAN'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
