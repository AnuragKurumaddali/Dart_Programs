import 'dart:io';

bool isNumeric(String? str){
  if(str == null)
    return false;
  return int.tryParse(str) != null;
}

void printNumberOfDigits(String userInput){
  int num = int.parse(userInput);
  int incrementer = 0;
  while(num > 0)
    {
      //num %= 10;//It will return last value Ex: 213%10 = 3
      num ~/= 10;//It will remove last value and return the remaining numbers Ex: 213/10 = 21
      incrementer +=1;
    }
    print("The length of the entered value is $incrementer");
}

void main(){
  print("Enter the largest number you know, then application calculates the number of digits in the entered number");

  String? userInput = stdin.readLineSync();

  if(isNumeric(userInput)){
    printNumberOfDigits(userInput!);
  }
  else{
    print("Please enter a number");
    return;
  }
}