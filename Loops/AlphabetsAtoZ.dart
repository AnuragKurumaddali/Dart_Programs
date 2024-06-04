/*
  Program for printing All the alphabets from A-Z
 */
void main(){
  String initChar = 'A',finalChar = 'Z';
  int initialAsciiValue = initChar.codeUnitAt(0);
  print("Alphabets between $initChar - $finalChar are : ");
  /*
    While loop for printing All the alphabets from A-Z
   */
  while(initialAsciiValue <= finalChar.codeUnitAt(0)){
    print(String.fromCharCode(initialAsciiValue));
    initialAsciiValue++;
  }
}