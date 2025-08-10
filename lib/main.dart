import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'containers',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom container"),
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 70,
                color: Colors.red,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                child: Text("1", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
              Container(
                  height: 70,
                  width: 70,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text("2", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.blue,
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.center,
                child: Text("3", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100, width: 250, color: Colors.yellow.shade800,
                  alignment: Alignment.center,
                  child: Text("Large Container", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 120,
                color: Colors.purple,
                margin: EdgeInsets.only(left: 50),
                alignment: Alignment.center,
                child: Text(
                  "Left",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)
                ),
              ),
              Container(
                height: 60,
                width: 120,
                color: Colors.cyan.shade500,
                margin: EdgeInsets.only(right: 50),
                alignment: Alignment.center,
                child: Text(
                  "Right",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
