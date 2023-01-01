import 'classFile.dart';

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Nelson Mandela was a politician who spent 20 years in prison for what?",
    [
      Answer("Fraud", false),
       Answer("Internet scams", false),
      Answer("Opposing apartheid", true),
      Answer("Robbing a bank", false),
    ],
  ));

  list.add(Question(
    "Rosa Parks campaigned for civil rights. What action made her famous?",
    [
      Answer("She refused to give up her seat on a bus", true),
      Answer("She read every book in the library", false),
      Answer("She never ate any vegetables", false),
       Answer("She only wore pink", false),
    ],
  ));

  list.add(Question(
    "Charles Darwin was a scientist who had a controversial idea. What was it?",
    [
      Answer("That aliens made the planet", false),
      Answer("That frogs will rule the Earth", false),
      Answer("That rainbows contain secret messages", false),
      Answer("That man evolved from apes", true),
    ],
  ));

  list.add(Question(
    "Mother Teresa was a Catholic nun who spent her whole life doing what?",
    [
      Answer("Helping the poor", true),
      Answer("Making stained glass windows", false),
      Answer("Cleaning churches", false),
      Answer("Collecting shoes", false),
    ],
  ));

  return list;
}
