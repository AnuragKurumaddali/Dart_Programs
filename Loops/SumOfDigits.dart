import 'dart:io';

bool isNumeric(String? userInput){
  if(userInput == null)
    return false;
  return int.tryParse(userInput) != null;
}

void printSumOfDigits(String userInput){
  int enteredNumber = int.parse(userInput);
  int total = 0;
  while(enteredNumber > 0){
    total += (enteredNumber % 10);
    enteredNumber ~/= 10;
  }
  print("The Sum of the digits is : $total");
}

void main(){
  print("Enter a number and see the result with Sum of all the digits of the number");
  String? userInput = stdin.readLineSync();
  if(isNumeric(userInput)){
    printSumOfDigits(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}