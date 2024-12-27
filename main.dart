/*رجعت درست المادة ورجعت حليت 
// task1
//وبكرا برجع احل 
task2 
وبكمل 3
*/
import 'dart:io';
void main(){
    bool temp=true; 
    while(temp){
      // حاولت اعملهم ب بس ما زبط معي method
        print('Enter the first number :');
        int number1= int.parse(checkingOptions());
        print("Select operations '+' '-' '*' '/' :"); 
        String inputChoose = checkingOptions();
        print('Enter the second number :');
        int number2=int.parse(checkingOptions()); 
        switch(inputChoose){
             case '+':
                add(number1,number2);
                break;
             case '-':
                subtract(number1,number2);
                break;
             case '*':
                multiply(number1,number2);
                break;
             case '/':
                divide(number1,number2);
                break;
             default:
                print('Wrong choice');
                break;  
     } 
     temp = choose();
  }
}
bool choose (){
    bool temp=true;
    print('Do you want to continue ? Y or N ');
    String chooseAnswer = stdin.readLineSync() ?? '';
    if(chooseAnswer.toUpperCase()=='N'){
          temp=false;
     }
    else if(chooseAnswer.toUpperCase()=='Y'){
          temp=true;
     }
     else {// مشان اذا دخل حروف او ارقام غلط 
          temp=false;
          print('error input then stop');
     }

     return temp;
}
String checkingOptions (){
   //حاسه في اشي غلط في 
    String input=stdin.readLineSync()??'' ;
    if(input.isEmpty){
        return '0';
    }
    return input;
}
void add(int n1,int n2){
    print( "the result ${n1+n2}" );
}
void subtract(int n1,int n2){
    print( "the result ${n1-n2}" );
}
void multiply(int n1,int n2){
   print( "the result ${n1*n2}" );
}
void divide(int n1,int n2){
   if(n2==0){
       print( "the result 0 " );
   }
   else 
       print( "the result ${n1/n2}" );
}