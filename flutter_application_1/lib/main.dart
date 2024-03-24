import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Инкремент'),
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
  void _incrementCounterRemove() {
    setState(() {
   
      _counter--;
    });
  }
 
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ), Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
onPressed:_incrementCounterAdd,
style: ElevatedButton.styleFrom(
  backgroundColor:  Colors.green,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(12), // <— Radius
),
),
child: const Icon(Icons.add),
),
        ElevatedButton(
onPressed:_incrementCounterRemove,

style: ElevatedButton.styleFrom(
  backgroundColor:  Colors.red,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(12), // <— Radius
),
),
child: const Icon(Icons.remove),
),
          ],),
          ],
        ),
        
      ),
     
    );
  }
}
