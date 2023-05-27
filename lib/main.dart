import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random newMath = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text("Luck Games"),
        )),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: (Text("Winning Number Is 4")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: x == 4 ? Colors.green.withOpacity(.5) :  Colors.grey.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: x == 4 ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Colors.deepOrange,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Well Done you are win with ${x.toString()} \n",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ) : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.deepOrange,
                          size: 30,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Better Luck Next Time, Your Number is ${x.toString()} \n try again",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              x = newMath.nextInt(6);
              setState(() {});
            },
            child: const Icon(Icons.refresh)),
      ),
    );
  }
}
