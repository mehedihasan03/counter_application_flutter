import 'package:flutter/material.dart';

void main() {
  runApp(CountApp());
}

class CountApp extends StatelessWidget {
   CountApp();


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Counting App",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  _HomePageState();
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counting Numbers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "$_count",
              style: const TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                color: Colors.orange
              )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(
          Icons.add
        ),
      ),
    );
  }
}