import 'package:flutter/material.dart';

class MyCalulateArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCalulateAreaState();
}

class MyCalulateAreaState extends State<MyCalulateArea> {
  final _formKey = GlobalKey<FormState>();
  int? _width;
  int? _height;
  int? _area;

  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          Row(children: [
            Container(
                padding: EdgeInsets.all(10.0), child: Text('Ширина (мм):')),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(validator: (value) {
                      if (value!.isEmpty) return 'Задайте Ширину';

                      try {
                        _width = int.parse(value);
                      } catch (e) {
                        _width = null;
                        return e.toString();
                      }
                    }))),
          ]),
          SizedBox(height: 10.0),
          Row(children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0), child: Text('Высота (мм):')),
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextFormField(validator: (value) {
                      if (value!.isEmpty) return 'Задайте Высоту';

                      try {
                        _height = int.parse(value);
                      } catch (e) {
                        _height = null;
                        return e.toString();
                      }
                    }))),
          ]),
          SizedBox(height: 10.0),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    if (_width is int && _height is int)
                      _area = _width! * _height!;
                  });
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Вычислить',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(height: 50.0),
          Text(
            _area == null
                ? 'задайте параметры'
                : 'S = $_width * $_height = ${_area} (мм2)',
            style: TextStyle(fontSize: 30.0),
          )
        ]));
  }
}

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(title: Text('Калькулятор площади')),
        body: MyCalulateArea())));
