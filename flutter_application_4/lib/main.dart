import 'package:flutter/material.dart';

final contacts = Container(
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
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Общежития КубГАУ',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ),
          body: contacts),
    ) // ListView.builder
        );// MaterialApp
  