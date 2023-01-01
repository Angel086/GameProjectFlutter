import 'classFile.dart';

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Who is known as the Father of Economics?",
    [
      Answer("John Smith", false),
       Answer("Adam Sims", false),
      Answer("Adam Smith", true),
      Answer("John Sims", false),
    ],
  ));

  list.add(Question(
    "Which of the following is the basic characteristic of Oligopoly?",
    [
      Answer("a few sellers, many buyers", true),
      Answer("a few sellers, one buyer", false),
      Answer(" a few sellers, a few buyers", false),
       Answer(" many sellers, a few buyers", false),
    ],
  ));

  list.add(Question(
    " Which Indian state has the largest number of cotton textile mills?",
    [
      Answer(" Madhya Pradesh", false),
      Answer(" Gujarat", false),
      Answer("West Bengal", false),
      Answer("Maharashtra", true),
    ],
  ));

  list.add(Question(
    "Which Indian state has the largest number of cotton textile mills?",
    [
      Answer("Helping the poor", true),
      Answer("Making stained glass windows", false),
      Answer("Cleaning churches", false),
      Answer("Collecting shoes", false),
    ],
  ));

  return list;
}