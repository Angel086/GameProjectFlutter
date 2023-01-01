import 'classFile.dart';

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Who actually drew the sketch of Rose in Titanic?",
    [
      Answer("Kathy Bates", false),
       Answer("Leonardo DiCaprio", false),
      Answer("James Cameron", true),
      Answer("Billy Zane", false),
    ],
  ));

  list.add(Question(
    "Where were The Lord of the Rings movies filmed?",
    [
      Answer("prune", true),
      Answer("raisin", false),
      Answer("date", false),
    ],
  ));

  list.add(Question(
    " Strawberries, raspberries, peaches and cherries are all related to which type of flower?",
    [
      Answer("Australia", false),
      Answer("Ireland", false),
      Answer("Iceland", false),
      Answer("New Zealand", true),
    ],
  ));

  list.add(Question(
    "Which country does Forrest Gump travel to as part of the All-American Ping-Pong Team?",
    [
      Answer(" China", true),
      Answer("Vietnam", false),
      Answer(" Sweden", false),
      Answer("France", false),
    ],
  ));

  return list;
}
