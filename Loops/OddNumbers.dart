import 'dart:io';

/*
  Program for printing Odd numbers from 1 to num
 */
void main(){
  int num;
  print("The program is to print Odd numbers from 1 to num \nPlease enter the Max. value for num greater than 1: ");
  try{
    num = int.parse(stdin.readLineSync()??"0");
  }catch(e){
    num = 0;
  }

  if(num < 1){
    print("The maximum range entered is less the initial value 1. Hence, Odd numbers in between the range $num and 1 is not possible");
    return;
  }
  else {
    print("The Odd numbers between 1 to $num are : ");
    /*
      For loop for printing Odd numbers from 1 to num.
     */
    for(int i=1;i<=num;i++){
      if(i%2 != 0)
        print(i);
    }
  }
}