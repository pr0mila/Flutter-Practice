import 'questions.dart';
import 'package:flutter/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Icon> scoreKeeper = [];
  void quizNum(int questionNumber)
  {
    _questionNumber = questionNumber;
  }
  List <Question> _questionBank = [
    Question(q:'Some cats are actually allergic to humans', a:true),
    Question(q:'You can lead a cow down stairs but not up stairs.', a:false),
    Question(q:'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q:'A slug\'s blood is green.', a:true),
    Question(q:'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a:true),
    Question(q:'It is illegal to pee in the Ocean in Portugal.', a:true),
    Question(
        q:'No piece of square dry paper can be folded in half more than 7 times.',
        a:false),
    Question(
        q:'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a:true),
    Question(
        q:'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a:false),
    Question(
        q:'The total surface area of two human lungs is approximately 70 square metres.',
        a:true),
    Question(q:'Google was originally called \"Backrub\".', a:true)
  ] ;



  void nextQuestion()
  {
    if(_questionNumber<_questionBank.length-1)
      {
        _questionNumber++;
      }
    else{
      _questionNumber = 0;
      scoreKeeper.clear();

    }
  }


  String getQuestion()
  {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer()
  {
    return _questionBank[_questionNumber].questionAnswer;
  }

}