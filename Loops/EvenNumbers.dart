import 'dart:io';

/*
  Program for printing Even numbers from 1 to num
 */
void main(){
  int i = 1, num;
  print("The program is to print Even numbers from 1 to num \nPlease enter the Max. value for num greater than 1: ");
  try{
    num = int.parse(stdin.readLineSync() ?? "0");
  }catch(e){
    num = 0;
  }
  if(num < i){
    print("The maximum range entered is less the initial value 1. Hence, Even numbers in between the range $num and $i is not possible");
    return;
  }
  else {
    print("The Even numbers between $i to $num are : ");
    /*
      While loop for printing Even numbers from 1 to num.
     */
    while (i <= num) {
      if(i % 2 == 0)
        print("$i");
      i++;
    }
  }
}