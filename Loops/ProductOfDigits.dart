import 'dart:io';

bool isNumeric(String? userInput){
  if(userInput == null)
    return false;
  return int.tryParse(userInput) != null;
}

void printProductOfDigits(String userInput){
  int enteredNumber = int.parse(userInput);
  int total = 1;
  while(enteredNumber > 0){
    total *= (enteredNumber % 10);
    enteredNumber ~/= 10;
  }
  print("The Product of the digits is : $total");
}

void main(){
  print("Enter a number and see the result with Product of all the digits of the number");
  String? userInput = stdin.readLineSync();
  if(isNumeric(userInput)){
    printProductOfDigits(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}