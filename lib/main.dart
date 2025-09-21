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

  String customDateTime() {
    return DateFormat('HH:mm - dd-MM-yyyy').format(date);
  }
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
                    controller: textController,
                    decoration: InputDecoration(
                      labelText: 'Habit',
                      hintText: 'Enter The Habit Here!',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,
                            width: 3,
                        ),
                      ),
                    ),
                    onSubmitted: (value) {
                      final text = textController.text.trim();
                      if (text.isEmpty) return; // ignore empty input
                      addHabit(Habit(text, DateTime.now()));
                      textController.clear();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: habits.length,
              //padding: EdgeInsets.all(30)),
              itemBuilder: (context, index) {
                final habit = habits[index];
                TextField(
                  controller:
                      textController, //need to have this in order to manage the textfield
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                );
                return ListTile(
                  tileColor: Colors.grey.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  title: Text(
                    textAlign: TextAlign.center,
                    habit.activity,

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,
                    ),
                  ),
                  subtitle: Text(
                    DateFormat('dd-MM-yyyy - hh:mm a').format(habit.date),
                    textAlign: TextAlign.center,
                     //textWidthBasis: TextWidthBasis.values,
                    //lowercase the hh for non military time
                    //habit.date.toString(), Cant use this since I have the custom function
                  ), //need a to string since date is a another type
                  hoverColor: Colors.grey, // doesnt even work on my screen
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final dateFormat = DateFormat('HH:mm - dd-MM-yyyy');
          final text = textController.text
              .trim(); //making it easier to type out and detect white space

          if (text.isEmpty) return;
          addHabit(Habit(text, DateTime.now()));
          textController.clear();
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }
}
