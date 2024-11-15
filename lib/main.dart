import 'package:flutter/material.dart';

import 'sources/formA.dart';
import 'sources/formB.dart';
import 'sources/formC.dart';
import 'sources/formD.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter FormBuilder Demo',
        debugShowCheckedModeBanner: false,
        home: _HomePage(),
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
        )
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Adrià Salvador 24/25'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Form A'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return formA();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Form B'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return formB();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Form C'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return formC();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Form D'),
              trailing: const Icon(Icons.arrow_right_sharp),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return formD();
                    },
                  ),
                );
              },
            ),
          ],
        )
    );
  }
}