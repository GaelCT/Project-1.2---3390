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

  //String customDateTime() {
  //  return DateFormat('HH:mm - MM-dd-yyyy').format(date);
  //}
}

class _HomePageState extends State<HomePage> {
  //this is where the data will go
  List<Habit> habits = []; // this is a map
  //how it works it by

  void addHabit(Habit h) {
    setState(() => habits.add(h));
  }
//adding a habit
  void removeHabit(int counter) {
    setState(() => habits.removeAt(counter));
  }
//this didnt get to be implemented
  final textController = TextEditingController();
  //cant use const because this will not be a static
  /*Widget NewBuildHabitTile(Habit habit, int element){
   return ListTile()
   //this was a different approach to creating new tiles.
 }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // alot easier to have this body function layout
        children: [
          Padding(
            padding: EdgeInsets.all(
              40.0,
            ), // The first textbox is using 40 for padding
            child: Row(
              //used row instead of column to give it a layout of a row
              children: [
                Expanded(
                  //used for
                  child: TextField(
                    controller:
                        textController, //this is like a event listener for the string
                    decoration: InputDecoration(
                      labelText:
                          'Habit', // this is for the text shown before you click on it
                      hintText: 'Enter The Habit Here!', //after you click on it
                      enabledBorder: OutlineInputBorder(
                        //allow the borders to be shown with white
                        borderSide: BorderSide(color: Colors.white, width: 3),
                      ),
                    ),
                    onSubmitted: (value) {
                      final text = textController.text.trim(); //remove the extra white space, event listener
                      if (text.isEmpty) return; // ignore empty input
                      addHabit(Habit(text, DateTime.now())); //pass the text which is the variable and the DateTime function
                      textController.clear(); //clear the string. I tried setting it up with "" but it didn't work.
                    },
                  ),
                ),
              ], // end of the children
            ),
          ),
          Expanded(
            child: ListView.builder( //the textbox of user input
              itemCount: habits.length,
              //padding: EdgeInsets.all(30)), i forgout but this didn't work
              itemBuilder: (context, index) {
                final habit = habits[index]; //had to finalize it otherwise it wouldn't work
                TextField(
                  controller:
                      textController, //need to have this in order to manage the textfield
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                  ),
                );
                return ListTile( //this is the output after you press enter or add button
                  tileColor: Colors.grey.shade900, //color customizations
                   //removed the raduis rounded rectangleborder
                  title: Text(
                    textAlign: TextAlign.center, //the output of the Each habit
                    habit.activity, //the user input text/activity
                    style: TextStyle( //customization on output text
                      fontWeight: FontWeight.bold,
                      fontSize: 17.5,
                    ),
                  ),
                  subtitle: Text(
                    DateFormat('MM-dd-yyyy - hh:mm a').format(habit.date),
                    textAlign: TextAlign.center,
                    //textWidthBasis: TextWidthBasis.values,
                    //lowercase the hh for non military time
                    // these 3 were concepts of how I thought worked
                    //habit.date.toString(), Cant use this since I have the custom function
                  ), //need a to string since date is a another type
                  //hoverColor: Colors.grey, // doesnt even work on my screen
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final text = textController.text
              .trim(); //making it easier to type out and detect white space
          if (text.isEmpty) return;
          addHabit(Habit(text, DateTime.now()));
          textController.clear();
        }, // can make the button more larger if I used sizebox for specific sizes and measurements
        label: Text("Add"), // this is for the button and labeling
        icon: Icon(Icons.add), //icon design
        backgroundColor: Colors.black, //colors customization
        foregroundColor: Colors.white,
      ),
    );
  }
}
