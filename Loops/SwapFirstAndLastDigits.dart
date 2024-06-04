import 'dart:io';

bool isNumeric(String? userInput){
  if(userInput == null)
    return false;
  return int.tryParse(userInput) != null;
}

void printSwappedNumber(String userInput){
  int enteredNumber = int.parse(userInput);
  int lastNumber = enteredNumber % 10;
  int firstNumber = enteredNumber;
  int tempNumber = 1, temp2, temp3;
  while (firstNumber > 9){
    firstNumber ~/= 10;
    tempNumber *= 10;
  }
  temp2 = ((enteredNumber - (tempNumber * firstNumber)) ~/ 10 * 10) ;
  tempNumber = lastNumber * tempNumber;
  temp3 = tempNumber + temp2 + firstNumber;
  print("The number is $temp3");
}

void main(){
  print("Enter a number and see the result with Swapped First and Last digits of the number");
  String? userInput = stdin.readLineSync();
  if(isNumeric(userInput)){
    printSwappedNumber(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}