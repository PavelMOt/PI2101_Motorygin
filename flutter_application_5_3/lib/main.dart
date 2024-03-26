import 'package:flutter/material.dart';
import 'dart:math';

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
              body: ListView.builder(
                itemBuilder: (context, index) {
                  return Text('2 ^ $index = ${pow(2, index)}');
                },
              ) // ListView.builder
              )), // MaterialApp
    );
