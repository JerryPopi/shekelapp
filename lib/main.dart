import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ShekelCounter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShekelCounter extends StatefulWidget {
  const ShekelCounter({Key? key}) : super(key: key);

  @override
  _ShekelCounterState createState() => _ShekelCounterState();
}

class _ShekelCounterState extends State<ShekelCounter> {
  int _shekels = 0;
  final TextStyle mainText = TextStyle(
    color: Colors.blue,
    fontSize: 24.0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Align(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                      "\$Shekel Generator\$",
                      style: TextStyle(color: Colors.green, fontSize: 24.0),
                    ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text(
                      'Shekels: $_shekels',
                      style: mainText,
                    ),
                    // IconButton(onPressed: _increaseShekel, icon: Icon(Icons.money)),
                    Image(image: AssetImage("images/israel.png")),
                    TextButton(
                        onPressed: _increaseShekel,
                        child: Text("Generate!",
                            style: mainText))
                  ],
                ),
              ]),
        ),
      ),
    );
  }

  void _increaseShekel() {
    setState(() {
      _shekels += 1;
    });
  }
}
