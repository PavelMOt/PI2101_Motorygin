import 'package:flutter/material.dart';

final contacts = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(
            Icons.phone,
            color: Colors.green,
          ),
          Container(
            child: Text(
              'Позвонить',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.near_me,
            color: Colors.green,
          ),
          Container(
            child: Text(
              'Маршрут',
              style: TextStyle(color: Colors.green),
            ),
          )
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.share,
            color: Colors.green,
          ),
          Container(
            child: Text(
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
  