import 'dart:convert';

import 'package:app/function.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: App());
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var data;
  String url = '';
  String query = 'initial';
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          TextField(
            controller: _controller,
            onChanged: (value) {
              url = 'http://10.0.2.2:5000/api?Query=' + value.toString();
            },
          ),
          TextButton(
              onPressed: () async {
                data = await fetchapi(url);
                var decoded = jsonDecode(data);
                setState(() {
                  query = decoded['ans'];
                });
              },
              child: Text('Change')),
          Text(query)
        ]),
      ),
    );
  }
}
