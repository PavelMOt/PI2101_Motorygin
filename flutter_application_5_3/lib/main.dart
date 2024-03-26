import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          title: 'lab 5',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'список элементов',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ),
          )), // MaterialApp
    );
