import 'dart:io';
import 'dart:math';

void main(){
  
  // TASK 1

  List nameList = ["Bilal", "Bilal", "Bilal", "Owais", "Owais", "Owais"];
  List result = Set.of(nameList).toList();
  print(result);

  // TASK 2

  List list1 = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List listEven = [];

  for (var i in list1) {
    if (i.isEven) {
      listEven.add(i);
      print(listEven);
    } else{
      print("There is no even Number");
    }
  }

  // TASK 3

  int table = 7;
  for (var i = 1; i <= 15; i++){
    print("$table X $i  = ${table * i}");
  }

  // TASK 4

 List fruits = ["apple", "banana", "mango", "orange", "strawberry"];
 for (var i = 0; i < fruits.length; i++){
  print(fruits[i]);
 }

//  TASK 5

for (var i = 5; i <= 100; i += 5){
  print(i);
}

// TASK 6

String temp = "The temperature in Karachi City is [{91.4°}{F}]";
double fahreneit = double.parse(temp.split("[")[1].split("{")[1].split("°")[0]);
double celsius = (fahreneit-32) * 5/9;
print ("The temperature in Karachi City is $celsius° C");

// TASK 8

print("Enter your first value here :");
int number1 = int.parse(stdin.readLineSync()!); 
print("Enter your Second value here :");
double number2 = double.parse(stdin.readLineSync()!);
print("Enter your Operator here :");
var operator = stdin.readLineSync();
double finalResult;
if (operator == '+' ){
  finalResult = number1 + number2;
  print(finalResult);
}else if (operator == '-' ){
  finalResult = number1 - number2;
  print(finalResult);
}else if (operator == '*' ){
  finalResult = number1 * number2;
  print(finalResult);
}else if (operator == '/' ){
  finalResult = number1 / number2;
  print(finalResult);
}else if (operator == '%' ){
  finalResult = number1 % number2;
  print(finalResult);
}else{
  print("Your value is incorrect");
}

// Task 9

String val = 'a';
if (val.length == 1){
  print(true);
}else {
  print(false);
}

// TASK 10

String reverseVal = 'natsikaP nawaJ';
print(reverseVal.split('').reversed.join());

// TASK 12

List numList = [1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15,
16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 29, 30, 31, 32,
33, 35, 36, 37, 38, 39, 40, 41, 42, 45, 46, 48, 49, 50, 51, 53,
54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68, 69, 71,
72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
88, 89, 90, 92, 93, 94, 95, 96, 98, 99, 100];
List missingNum = [];


for (var i = 1; i <= numList.last; i++){
  if (numList != i){
  missingNum.addAll([i]);
  if (numList != missingNum){
  }else{
  }
  
  }else{
    print("List is 1 to 100");
  }
}

// TASK 13

List<int> unsortedList = [65, 34, 43, 44, 28, 70, 47, 52, 8, 11];
unsortedList.sort();
print("This is the Small value in the list: ${unsortedList.first}");
print("This is the Biggest value in the list: ${unsortedList.last}");

// Task 14

  var sumNumber = 18;
  var given_list = [1, 2, 3, 4, 5];

  for (var i = 0; i < given_list.length; i++) {
    sumNumber += given_list[i];
  }

  print("Sum : ${sumNumber}");

  // TASK 15

  List markSheet = [ {
    "roll no": 1391235,
    "name": "Muhammad Shahid",
    "class": "IX",
    "subject": {
      "english": 50,
      "sindhi": 65,
      "chemestry": 60,
      "biology": 75,
      "pakistan studies": 80,
    },
    "phone": "03121186020",
    "email": "shahidjaber90@gmail.com",
    "address": {
      "house no": "431/A, Sector 11-G, New Karachi, Karachi",
      "zip code": 75850,
      "city": "Karachi"
    }
  },

  {
    "roll no": 1391236,
    "name": "Arshad Ahmed",
    "class": "IX",
    "subject": {
      "english": 55,
      "sindhi": 35,
      "chemestry": 68,
      "biology": 72,
      "pakistan studies": 62,
    },
    "phone": "03132499545",
    "email": "arshadahmed@gmail.com",
    "address": {
      "house no": "429/A, Sector 11-G, New Karachi, Karachi",
      "zip code": 75850,
      "city": "Karachi"
    }
  },

  {
    "roll no": 1391237,
    "name": "Muhammad Faizan",
    "class": "IX",
    "subject": {
      "english": 25,
      "sindhi": 71,
      "chemestry": 48,
      "biology": 92,
      "pakistan studies": 20,
    },
    "phone": "03417555787",
    "email": "faizanmughal@gmail.com",
    "address": {
      "house no": "351/A, Sector 11-F, New Karachi, Karachi",
      "zip code": 75850,
      "city": "Karachi"
    }
  },];

  for (var i = 0; i < markSheet.length; i++){
    print("Marksheet");
    print("___________________________________________________________________________________");
    print("Student Roll No: ${markSheet[i]["roll no"]}");
    print("Student Name: ${markSheet[i]["name"]}");
    print("Student Phone: ${markSheet[i]["phone"]}");
    print("Student Email: ${markSheet[i]["email"]}");
    print("Student Address: ${markSheet[i]["address"]["house no"]}");
    print("Student Postal Code: ${markSheet[i]["address"]["zip code"]}");
    print("Student City: ${markSheet[i]["address"]["city"]}");
    print("Student Class: ${markSheet[i]["class"]}");
    print("English Marks is: ${markSheet[i]["subject"]["english"]}");
    print("Sindhi Marks is: ${markSheet[i]["subject"]["sindhi"]}");
    print("Chemestry Marks is: ${markSheet[i]["subject"]["chemestry"]}");
    print("Biology Marks is: ${markSheet[i]["subject"]["biology"]}");
    print("Pakistan Studies Marks is: ${markSheet[i]["subject"]["pakistan studies"]}");
    print("Total Marks is: ${markSheet[i]["subject"]["english"] + 
    markSheet[i]["subject"]["sindhi"] + 
    markSheet[i]["subject"]["chemestry"] +
    markSheet[i]["subject"]["biology"] +
    markSheet[i]["subject"]["pakistan studies"]}");

    var percentage = (markSheet[i]["subject"]["english"] + 
    markSheet[i]["subject"]["sindhi"] + 
    markSheet[i]["subject"]["chemestry"] +
    markSheet[i]["subject"]["biology"] +
    markSheet[i]["subject"]["pakistan studies"]) / 500 * 100 ;

    print("${markSheet[i]["name"]} Your percentage is  $percentage %");

    if ( percentage >= 81 && percentage <= 100 ){
      print("${markSheet[i]["name"]} : Your Rank is A+");
    }
    else if ( percentage >= 71 && percentage <= 80 ){
      print("${markSheet[i]["name"]} : Your Rank is A");
    }
    else if ( percentage >= 61 && percentage <= 70 ){
      print("${markSheet[i]["name"]} : Your Rank is B");
    }
    else if ( percentage >= 51 && percentage <= 60 ){
      print("${markSheet[i]["name"]} : Your Rank is C");
    }
    else if ( percentage >= 41 && percentage <= 50 ){
      print("${markSheet[i]["name"]} : Your Rank is D");
    }
    else if ( percentage >= 35 && percentage <= 40 ){
      print("${markSheet[i]["name"]} : Your Rank is E");
    }
    else if ( percentage >= 0 && percentage <= 34 ){
      print("${markSheet[i]["name"]} : Sorry you are FAIL");
    }
    else{
      print("Sorry Wrong Roll no");
    }
    print("___________________________________________________________________________________");
  }




}