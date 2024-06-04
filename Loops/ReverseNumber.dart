import 'dart:io';

bool isNumeric(String? userInput){
  if(userInput == null)
    return false;
  return int.tryParse(userInput) != null;
}

void printReverseNumber(String userInput){
  int enteredNumber = int.parse(userInput);
  int reverseNumber = 0;
  while(enteredNumber > 0){
    int temp = reverseNumber * 10;
    reverseNumber = temp + (enteredNumber % 10);
    enteredNumber ~/= 10;
  }
  print("The reverse Number is : $reverseNumber");
}

void main(){
  print("Enter a number and see the result as reverse number");
  String? userInput = stdin.readLineSync();
  if(isNumeric(userInput)){
    printReverseNumber(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}