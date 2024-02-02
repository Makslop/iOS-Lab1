import 'dart:io';
import 'dart:math';
double addition(double a, double b)
{
  return a + b;
}
double subtraction(double a, double b)
{
  return a - b;
}
double multiplication(double a, double b)
{
  return a * b;
}
double division(double a, double b)
{
  return a / b;
}
double square(double num)
{
  return num * num ;
}
double squareRoot(double num)
{
  return sqrt(num);
}
double input()
{
  return double.parse(stdin.readLineSync() ?? '0');
}

void main() {
  bool flag = true;
  while(flag)
  {
    print("Choose operator: 1-addition, 2-subtraction, 3-multiplication, 4-divison, 5-square, 6-squareRoot, 7-Exit");
    bool flag1 = true;
    double box = 1;
    while(flag1)
    {
      print("Enter operation: "); box = input();
      int box1 = box.toInt();
      if((0 < box) && (box <8))
      {
        flag1 = false;
      }
      else
      {
        flag1 = true;
        print("Incorrect value!");
      }
    }
    int operation = box.toInt();
    switch(operation){
      case 1:
        print("Enter num1:"); double a = input();
        print("Enter num2:"); double b = input();
        print("Answer: ${addition(a, b)}\n");
        break;
      case 2:
        print("Enter num1:"); double a = input();
        print("Enter num2:"); double b = input();
        print("Answer: ${subtraction(a, b)}\n");
        break;
      case 3:
        print("Enter num1:"); double a = input();
        print("Enter num2:"); double b = input();
        print("Answer: ${multiplication(a, b)}\n");
        break;
      case 4:
        print("Enter num1:"); double a = input();
        print("Enter num2:"); double b = input();
        print("Answer: ${division(a, b)}\n");
        break;
      case 5:
        print("Enter num:"); double num = input();
        print("Answer: ${square(num)}\n");
        break;
      case 6:
        print("Enter num:"); double num = input();
        print("Answer: ${squareRoot(num)}\n");
        break;
      case 7:
        flag = false;
        break;
    }
  }
}