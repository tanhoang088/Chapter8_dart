import 'dart:io';

void main(){
  stdout.write('Input Quiz Score: ');
  int quizScore = int.parse(stdin.readLineSync()!);
  stdout.write('Input Mid-term Score: ');
  int midtermScore = int.parse(stdin.readLineSync()!);
  stdout.write('Input Final Score: ');
  int finalScore = int.parse(stdin.readLineSync()!);
  double averageScore = (quizScore + midtermScore + finalScore)/3;
  switch(averageScore){
    case <50 : print('Average score is: $averageScore, Your grade is: F');
    case >=50 && <70 : print('Average score is: $averageScore, Your grade is: C');
    case >=70 && <90 : print('Average score is: $averageScore, Your grade is: B');
    case >=90 : print('Average score is: $averageScore, Your grade is: A');
  }
}