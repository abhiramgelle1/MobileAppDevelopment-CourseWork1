import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Work - 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Course Work - 1'),
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
  String imageUrl = "assets/image1.jpg";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void resetButton() {
    setState(() {
      _counter = 0;
      imageUrl = "assets/image1.jpg";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 186, 159),
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Column(
              children: [
                Text("Name: Gelle Abhiram"),
                Text("PantherId: 002850818"),
              ],
            )),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 24, 25, 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Task - 1 [Counter Button]",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 186, 159),
                    fixedSize: Size(150, 30)),
                child: Center(
                  child: Text("Increment"),
                )),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 24, 25, 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Task - 2 [Image Toggle]",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Image.asset(
                imageUrl,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
                onPressed: () {
                  String url = "assets/image1.jpg";
                  if (imageUrl == "assets/image1.jpg") {
                    url = "assets/image2.jpg";
                  } else {
                    url = "assets/image1.jpg";
                  }
                  setState(() {
                    imageUrl = url;
                  });
                  ;
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 186, 159),
                    fixedSize: Size(150, 30)),
                child: Center(
                  child: Text("Toggle Image"),
                )),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 24, 25, 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Task - 3 [Reset Button]",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                    ),
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: resetButton,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 215, 80, 80),
                    fixedSize: Size(150, 30)),
                child: Center(
                  child: Text("Reset"),
                )),
          ],
        ),
      ),
    );
  }
}
