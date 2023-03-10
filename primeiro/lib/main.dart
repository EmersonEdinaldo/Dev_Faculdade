import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            

            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            (Image.asset("/brazzino.jpg", fit: BoxFit.cover,height: 500,width:500)
            ),
          ],
        ),
      ),
      floatingActionButton:
      Row( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    

          FloatingActionButton(
                                onPressed: increment,
                                tooltip: 'Increment',
                                child: const Icon(Icons.add),

      ),
      FloatingActionButton(
                                onPressed: decrement,
                                tooltip: 'Increment',
                                child: const Icon(Icons.remove),

      ),
      
  ],
      ), 
    );
  }
}
