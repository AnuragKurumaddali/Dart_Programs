import 'dart:io';

bool isNumeric(String? userInput){
  if(userInput == null)
    return false;
  return int.tryParse(userInput) != null;
}

void printSumOfFirstAndLastDigit(String userInput){
  int enteredNumber = int.parse(userInput);
  int firstNumber, lastNumber = enteredNumber % 10;
  firstNumber = enteredNumber;
  while(firstNumber > 9){
    firstNumber ~/= 10;
  }
  print("The Sum of first and last numbers is : ${firstNumber+lastNumber}");
}

void main(){
  print("Please Enter a Number greater than 2 digits. This program will print the sum of first and last digit of the entered Number.");
  String? userInput = stdin.readLineSync();
  if(isNumeric(userInput)){
    printSumOfFirstAndLastDigit(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}