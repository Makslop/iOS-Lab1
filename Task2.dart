import 'dart:io';
import 'dart:core';
String input()
{
  return stdin.readLineSync() ?? 'Error';
}
int searchSubstring(String str, String substr) {
  int strLength = str.length;
  int substrLength = substr.length;

  for (int i = 0; i <= strLength - substrLength; i++) {
    int j;
    for (j = 0; j < substrLength; j++) {
      if (str[i + j] != substr[j]) {
        break;
      }
    }
    if (j == substrLength) {
      return i;
    }
  }

  return -1;
}
void main()
{
  bool flag = true;
  while(flag)
  {
    print("Choose operator: 1-combining strings, 2-flip a line, 3-counting characters, 4-search for a substring, 5-Exit");
    bool flag1 = true;
    int container1 = 1;
    while(flag1) {
      print("Enter operation: ");
      String container = input();
      container1 = int.parse(container);
      if ((0 < container1) && (container1 < 6)) {
        flag1 = false;
        print(container1);
      }
      else {
        flag1 = true;
        print("Incorrect value!");
      }
    }
    switch(container1){
      case 1:
        String str1 = input();
        String str2 = input();
        print("Answer: ${str1 + str2}");
      case 2:
        String str = input();
        print("Answer:${str.split('').reversed.join()}");
      case 3:
        String str = input();
        int cnt = 0;
        for(int i=0; i<str.length; i++)
        {
          if(str[i] != ' ')
          {
            cnt++;
          }
        }
        print("Answer: ${cnt}");
      case 4:
        String str = input();
        String substr = input();
        int position = searchSubstring(str, substr);

        if (position == -1) {
          print("Substring not found");
        } else {
          print("Substring found at position: $position");
        }
      case 5:
        flag = false;
    }
  }
}