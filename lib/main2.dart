import 'package:flutter/material.dart';

void main() { runApp(const MyApp());}

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

//class _MyAppState extends State<MyApp> {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        colorScheme: ColorScheme.fromSeed(
//          seedColor: Colors.deepPurple.shade400,
//          brightness: Brightness.dark,
//        ),
//      ),
//      home: const MyHomePage(),
//    );
//  }
//}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

//class TextEditingControllerfunction {
//  TextEditingController controller = TextEditingController();
//}

class Habit{
  String activity;
  DateTime date;
  Habit(this.activity,this.date);
}


class _HomePageState extends State<HomePage> {
//this is where the data will go
 List<Habit> habits = [];

 void addHabit(Habit h){
   setState(() => habits.add(h));
 }
 void removeHabit(int counter){
   setState(() => removeAt(counter));
 }

 /*Widget NewBuildHabitTile(Habit habit, int element){
   return ListTile()
 }*/

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

                );
              },

          ),


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(

          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.grey, onPressed: () {
          addHabit(h),
          controller.clear(),
      },
        label: Text("Add"),

          ),
    );
  }
}
class textfieldclass extends StatefulWidget {
  const textfieldclass({super.key});

  @override
  State<textfieldclass> createState() => _textfieldclassState();
}

class _textfieldclassState extends State<textfieldclass> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Habit',
          hintText: 'Enter The Habit Here!'
        ),
          //TextEditingController _controller = TextEditingController(),
      ),
    );
  }
}











