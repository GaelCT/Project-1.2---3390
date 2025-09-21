import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habit Tracker',
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class Habit {
  String activity;
  DateTime date;
  Habit(this.activity, this.date);
}

class _HomePageState extends State<HomePage> {
  //this is where the data will go
  List<Habit> habits = [];

  void addHabit(Habit h) {
    setState(() => habits.add(h));
  }

  void removeHabit(int counter) {
    setState(() => habits.removeAt(counter));
  }

  final textController = TextEditingController();
  //cant use const because this will not be a static
  /*Widget NewBuildHabitTile(Habit habit, int element){
   return ListTile()
 }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(40.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Habit',
                        hintText: 'Enter The Habit Here!',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 3,
                        )
                      )),
                    ),
                  ),
                ],
              )
          ),
          Expanded(
            child: ListView.builder(
              itemCount: habits.length,
              itemBuilder: (context, index) {
                final habit = habits[index];
                TextField(controller: textController);
                return ListTile(
                  title: Text(habit.activity),
                  subtitle: Text(
                    habit.date.toString(),
                  ), //need a to string since date is a another type
                  hoverColor: Colors.grey,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final dateFormat = DateFormat('dd-MM-yyyy - HH:mm');
          final text = textController.text; //making it easier to type out
          addHabit(Habit(text, DateTime.now()));
          textController.clear();
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.grey,
      ),
    );
  }
}

