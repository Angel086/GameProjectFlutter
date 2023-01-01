import 'package:flutter/material.dart';

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
        home: const Information()
    );
  }
}


class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);
  @override
  GameInfos createState() => GameInfos();
}

class GameInfos extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Game Infos"),
    ),
    body:RichText(
      text: const TextSpan(

        //style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 3.0),
        children: <TextSpan>[
          TextSpan(
            text: "Trivia GameOverview.\n",
            style: TextStyle(height: 2, fontSize:30, color: Colors.black),
          ),

          TextSpan(
            text: "The purpose of this game is to contribute to furthering the education and knowledgeGame app "
                "that allows users (mainly kids) to quiz themself on question or topics"
                "by choosing a category/topic; while making it fun, competitive and entertaining for them. "
                "Once they finish, they will be able to share their results to social media via a screenshot giving them options "
                "to what social  media they want to upload it to."
                "They will have options to upload picture or image.The will have options to upload picture or image.\n",
            style: TextStyle(height: 2, letterSpacing:1.5, fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    ),);

  }
}