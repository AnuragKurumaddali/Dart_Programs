import 'dart:io';
/*
  Program for printing Sum of Natural numbers from 1 to num
 */
void main(){
  int num;
  print("Enter the maximum number greater than 1 for adding all the Natural numbers in between ");
  try {
    num = int.parse(stdin.readLineSync() ?? "0");
  }catch(e){
    num = 0;
  }
  if(num < 1){
    print("The maximum number entered is less the initial value 1. Hence, Sum of Natural numbers in between the range $num and 1 is not possible");
    return;
  }
  else if(num == 1){
    print("If the user input value is 1. Sum of Natural numbers with in the range is not possible");
    return;
  }
  else {
    int sum = 0;
    for(int i=1;i<=num;i++){
      sum += i;
    }
    print("The Sum of all Natural numbers between 1 to $num is : $sum");
  }
}