import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
          GestureDetector(
              onTap: () async {
                final call = Uri.parse('tel:+78612215818');
                if (await canLaunchUrl(call)) {
                  launchUrl(call);
                } else {
                  throw 'Could not launch $call';
                }
              },
              child: Column(
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
              )),
          GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse(
                    'https://2gis.ru/krasnodar/firm/70000001031988018');
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  throw 'Could not launch url';
                }
              },
              child: Column(
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
              )),
          GestureDetector(
              onTap: () async {
                if (!kIsWeb) {
                  await Share.share(
                      'https://2gis.ru/krasnodar/firm/70000001031988018');
                }
              },
              child: Column(
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
              ))
        ],
      ),
    );
  }

  Widget _buildAdress() {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Общежитие № 20',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Краснодар, ул. Калинина, 13')
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: _incrementCounterAdd,
                    icon: const Icon(
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
        body: ListView(
          children: [
            Image.network(
                'https://sun1-86.userapi.com/s/v1/if2/qBOUh8oyPtH2AqfnpVOddXGg0i6QG4dijCvMuWLR7w-cjRIhmQR34mgDJ9_JAjtSCkeCEFcAAb4QjmyxBrry6Yyg.jpg?size=761x761&quality=96&crop=286,118,761,761&ava=1'),
            _buildAdress(),
            _buildContats(),
            Container(
                padding: EdgeInsets.all(25),
                child: const Text(
                  """Студенческий городок или так называемый кампус Кубанского ГАУ состоит
из двадцати общежитий, в которых проживает более 8000 студентов, что состав-
ляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в об-
щежитии полностью. В соответствии с Положением о студенческих общежитиях
университета, при поселении между администрацией и студентами заключается
договор найма жилого помещения. Воспитательная работа в общежитиях направ-
лена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия
асоциальных явлений в молодежной среде. Условия проживания в общежитиях
университетского кампуса полностью отвечают санитарным нормам и требова-
ниям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных за-
лов, комнат самоподготовки, помещений для заседаний студенческих советов и
наглядной агитации. С целью улучшения условий быта студентов активно работает
система студенческого самоуправления - студенческие советы организуют всю ра-
боту по самообслуживанию.""",
                  textAlign: TextAlign.justify,
                ))
          ],
        ));
  }
}
