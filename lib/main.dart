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
        //child: Center()
        child: DataTable(
          border: TableBorder.all(color: Colors.black),
          columns: const[
            DataColumn(label: Text("Habit")),
            DataColumn(label: Text("Date")),
          ],
          rows: const[
            DataRow(cells: [
              DataCell(Text("hi")),
            ]),

          ],

          //border: TableBorder.all(color: Colors.white),
          //defaultVerticalAlignment: TableCellVerticalAlignment.fill,
          //children: [
          //  TableRow(
          //      decoration: BoxDecoration()
          //  ),
          //  children: []
          //],
        ),
      ),
    );
  }
}

