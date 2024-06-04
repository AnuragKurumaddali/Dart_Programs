import 'dart:io';

bool isNumeric(String? userInput){
  if(userInput == null)
    return false;
  return int.tryParse(userInput) != null;
}

void printFirstAndLastDigit(String userInput){
  int enteredNumber = int.parse(userInput);
  int firstNumber,lastNumber;
  lastNumber = enteredNumber % 10;
  firstNumber = enteredNumber;
  while(firstNumber > 9){
    firstNumber ~/= 10; //firstNumber = firstNumber ~/ 10
  }
  print("The First Number from user input $userInput is : $firstNumber");
  print("The last Number from user input $userInput is : $lastNumber");
}

void main(){
  print("Please Enter a Number greater than 2 digits. This program will print first and last digit of the entered Number.");

  String? userInput = stdin.readLineSync();
  if(isNumeric(userInput)){
    printFirstAndLastDigit(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}