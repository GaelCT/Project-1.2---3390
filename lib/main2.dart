import 'package:flutter/material.dart';

void main() {  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _MyAppState extends State<MyApp> {
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




class HomePage extends StatefulWidget {
  const HomePage({super.key});


  List<String> habits = ["", ""];
  List<String> date = ["", ""];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: habits.length,
              itemBuilder: (context, index) {
                final habits = [index];
                return ListTile(
                  title: Text(habits.name),
                  subtitle: Text(habits.date),
                  hoverColor: Colors.grey,
                  trailing: IconButton(
                    icon:Icon(Icons.delete),
                      onPressed: (){
                    setState(() {
                      habits.removeAt(index);
                    });
                  },
                ),
              },

          )

      ),
    );
  }
}

class Habit{
  String activity;
  DateTime dateTime;
  Habit(this.activity,this.dateTime);
}







