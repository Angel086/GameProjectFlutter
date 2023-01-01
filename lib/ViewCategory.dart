import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_project/QuestionView.dart';
import 'package:game_project/MenuView.dart';
import 'package:game_project/main.dart';
import 'package:game_project/quiz_screen.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const Category()
    );
  }
}

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);
  @override
  _ViewCategory createState() => _ViewCategory();
}

class _ViewCategory extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children:[
            InkWell(
                onTap:() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestionView(test: "food")));
                },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.restaurant, color: Colors.white,),
                    Text("Food", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionView(test: "movies")));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.movie, color: Colors.white,),
                    Text("Movie", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionView(test: "peopleHistory")));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.people, color: Colors.white,),
                    Text("People", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  QuestionView(test: "Economy")));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.business, color: Colors.white,),
                    Text("Economy", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.sports_soccer, color: Colors.white,),
                    Text("Soccer", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.public, color: Colors.white,),
                    Text("World Capitals", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(CupertinoIcons.flag, size: 30, color: Colors.white,),
                    Text("Flags", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()));
              },
              child: Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(CupertinoIcons.book, size: 30, color: Colors.white,),
                    Text("History", style:TextStyle(color: Colors.white))
                  ],
                ),
              ),
            ),

          ],
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        )
    );
  }
}