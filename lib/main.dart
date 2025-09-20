/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple.shade400,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Center(
              child: DataTable(
                border: TableBorder.all(color: Colors.white),
                decoration: BoxDecoration(shape: BoxShape.rectangle),
                headingTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                columns: [
                  DataColumn(
                    label: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 120),
                      child: Text("Habit", textAlign: TextAlign.center),
                    ),
                  ),
                  DataColumn(
                    label: ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 150),
                      child: Text("Date", textAlign: TextAlign.center),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      //DataCell(TextField()), this for user input
                      //DataCell(DateTime.now()), This for getting the current time
                      DataCell(Text("HI 2")),
                      DataCell(
                        Text(
                          "hi",
                          textAlign: TextAlign.center,
                          textScaler: TextScaler.linear(1.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 290,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  //controller: TextEditingController(text: ),
                  decoration: InputDecoration(fillColor: Colors.grey,
                  hintText: "Enter Habit!",
                  labelStyle: TextStyle(backgroundColor: Colors.black)
                  ),
                  keyboardType: TextInputType.text,

                ),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    //Navigator.push(
                    //context,
                    //MaterialPageRoute(builder: (context) => Page2()),
                    //);
                  },
                  child: Text("Add", textScaler: TextScaler.linear(1.7),),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 55),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            left: 250,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    //Navigator.pop(
                    //context,
                    //MaterialPageRoute(builder: (context) => Page2()),
                    //);
                  },
                  child: Text("Save", textScaler: TextScaler.linear(1.7)),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 55),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            left: 0,
            right: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    //Navigator.push(
                    //context,
                    //MaterialPageRoute(builder: (context) => Page2()),
                    //);
                  },
                  child: Text("Load", textScaler: TextScaler.linear(1.7), ),
                  style: TextButton.styleFrom(
                    minimumSize: Size(100, 55),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple.shade400,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          border: TableBorder.all(color: Colors.white),
          headingTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          columns: [
            DataColumn(
              label: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 150),
                child: const Text("Habit",
                    textAlign: TextAlign.center,
                ),
      ),
              ),
            DataColumn(
              label: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 150),
                child: const Text("Date",
                  textAlign: TextAlign.center,
          ),
        ),
              ),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(TextField()),
              DataCell(Text("hi",
              textAlign: TextAlign.center,
                  textScaler: TextScaler.linear(1.5),)),
            ]),
          ],
        ),
      ),
    );
  }
}


//class MyApp extends StatefulWidget {
//  const MyApp({super.key});
//
//  @override
//  State<MyApp> createState() => _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//    return const Placeholder();
//  }
//}
*/
