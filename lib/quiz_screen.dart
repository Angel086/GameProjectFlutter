import 'package:flutter/material.dart';
import 'package:game_project/FoodQuestion.dart' as food;
import 'package:game_project/Information.dart';
import 'package:game_project/WinningForm.dart';
import 'MovieQuestion.dart' as movie;
import 'PeopleQuestion.dart' as people;
import 'EconomyQuestion.dart' as economy;
import 'classFile.dart';
//import 'ImageFormField.dart';

class QuizScreen extends StatefulWidget {
  final String quizType;
  const QuizScreen({required this.quizType});
  @override
  State<QuizScreen> createState() => _QuizScreenState(quizType: quizType);
}


class _QuizScreenState extends State<QuizScreen> {

  //define the datas
  List<Question> questionList = food.getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  final String quizType;
  _QuizScreenState({required this.quizType});

  @override
  Widget build(BuildContext context) {

    if (quizType== 'food'){
      questionList = food.getQuestions();

    }
    else if(quizType == 'movies')
    {
      questionList = movie.getQuestions();

    }
     else if(quizType == 'peopleHistory')
    {
      questionList = people.getQuestions();

    }
     else if(quizType == 'Economy')
    {
      questionList = people.getQuestions();

    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 94, 29),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Simple Quiz App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 58, 7, 185),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  resetQuiz()
  {
    currentQuestionIndex = 0;
    score = 0;
    selectedAnswer = null;

  }


  goToForm()
  {
     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WinningForm()));
  }


  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: isSelected ? Color.fromARGB(255, 118, 64, 255) : Colors.white,
          onPrimary: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent),
      ),
      content: ElevatedButton(
        child: Text(isPassed ? "go to form" : "Restart"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop();
          setState(() {
            if (resetQuiz == "Restart"){
            resetQuiz();
            } else
            {
              goToForm();
            };
          });
        },
        
      ),
    );
  }
}
