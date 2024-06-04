import 'dart:io';

Function valueMultiplier(int iterativeNumber){
  String tableNumberMultiplier(int tableNumber){
    return "$tableNumber * $iterativeNumber = ${tableNumber*iterativeNumber}";
  };
  return tableNumberMultiplier;
}

bool isNumeric(String? str){
  if(str == null)
    return false;
  return int.tryParse(str) != null;
}

void main(){
  int tableNumber;
  print("Enter the number to print its multiplication number");

  String? userInput = stdin.readLineSync();

  if(isNumeric(userInput))
    tableNumber = int.parse(userInput!);
  else {
    print("Please enter an integer number to perform multiplication");
    return;
  }
  print("The Multiplication table of $tableNumber is");
  for(int i=1;i<=10;i++) {
    var tableMultiplier = valueMultiplier(i);
    print(tableMultiplier(tableNumber));
  }
}