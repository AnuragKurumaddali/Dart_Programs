import 'dart:io';
/*
  Program for printing all Natural numbers from 1 to num
 */
void main(){
  int i=1, num;
  print("Enter the maximum range of Natural number greater than 1: ");
  try {
    num = int.parse(stdin.readLineSync() ?? "0");
  }catch(e){
    num = 0;
  }
  if(num < i){
    print("The maximum range entered is less the initial value 1. Hence, Natural numbers in between the range $num and $i is not possible");
    return;
  }
  else {
    print("The Natural numbers between $i to $num are : ");
    /*
      While loop for printing Natural numbers from 1 to num.
     */
    while (i <= num) {
      print("$i");
      i++;
    }
  }
}