import 'dart:io';

/*
  Program for printing all Natural numbers in Reverse Order from num to 1
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
    print("The maximum range entered is less the initial value 1. Hence, Reversing the Natural numbers in between the range $num and $i is not possible");
    return;
  }
  else{
    print("The Natural numbers between $num to $i are : ");
    /*
      While loop for printing Natural numbers in Reverse Order from num to 1
     */
    while(num >= i){
      print(num);
      num--;
    }
  }
}