import 'package:flutter/material.dart';

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
              DataCell(
                  child: TextField(style: )),

              DataCell(Text("hi")),
            ]),
          ],
        ),
      ),
    );
  }
}