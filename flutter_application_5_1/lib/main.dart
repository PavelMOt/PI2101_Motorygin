import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'список элементов',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ),
            body: ListView(children: const [
              Text('0000'),
              Divider(),
              Text('0001'),
              Divider(),
              Text('0010'),
            ]) // ListView
            ) // Scaffold
        ) // MaterialApp
    );
