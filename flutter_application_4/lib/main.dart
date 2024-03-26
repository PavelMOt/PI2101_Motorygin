import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'lab 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounterAdd() {
    setState(() {
      _counter++;
    });
  }

  Widget _buildContats() {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Icon(
                Icons.phone,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Text(
                  'Позвонить',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Icon(
                Icons.near_me,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Text(
                  'Маршрут',
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          ),
          Column(
            children: [
              const Icon(
                Icons.share,
                color: Colors.green,
              ),
              Container(
                padding: const EdgeInsets.all(4),
                child: const Text(
                  'Поделиться',
                  style: TextStyle(color: Colors.green),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildAdress() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Общежитие № 20'),
            Text('Краснодар, ул. Калинина, 13')
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: _incrementCounterAdd,
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
            Text('$_counter')
          ],
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: _buildAdress());
  }
}
