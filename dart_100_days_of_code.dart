import 'dart:io';

main() {
  print('100 days of code');

  Week1 test = Week1();
  test.day1();
  test.day2();
  test.day3();
  test.day4();
  test.day5();
}

class Week1 {
  static String? userName;

  day1() {
    // Create a program that asks the user to enter their name and their age.
    // Print out a message that tells how many years
    // they have to be 100 years old

    print('Day 1: Welcome.\nWhat is your name?');
    userName = stdin.readLineSync();
    print('Hi $userName! How old are you?');
    var age = stdin.readLineSync();
    if (age != null) {
      int userAge = int.parse(age);
      if (userAge > 100) {
        print('You are too old to participate. Thank you $userName');
      } else if (userAge < 1) {
        print('Please input a valid age');
      } else {
        userAge = 100 - userAge;
        print('''Welcome $userName to 100 Days of code
You have $userAge years to clock a century of living''');
      }
    }
  }

  day2() {
    // //Ask the user for a number.
    // Depending on whether the number is
    // even or odd, print out an appropriate message to the user.

    print('Hi $userName tell us your favourite number');
    var userNum = stdin.readLineSync();
    if (userNum != null) {
      int userNumber = int.parse(userNum);
      if ((userNumber % 2) != 0) {
        print('Your favourite number: $userNumber is an odd number');
      } else {
        print('Your favourite number: $userNumber is an even number');
      }
    } else {
      print('Please enter a valid integer number');
    }
  }

  day3() {
    // Take a list, say for example this one:
    // a = [1,1,2,3,5,8,13,21,34,55,89]
    // and write a prigram that prints out all the elements of the
    // list that are less than 5

    print('''Day3: The following outputs all numbers lesser than 5 from the
    predetermined list: a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];''');
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    // for (int b = 0; b < a.length; b++) {
    //   if (a[b] < 5) {
    //     print(a[b]);
    //   }
    // }

    for (int i in a) {
      if (i < 5) {
        print(i);
      }
    }
  }

  day4() {
    // Create a program that asks the user for a number and then prints
    // out a list of all the divisors of that number.

    print('Day 4: Hi $userName, input a number to get its divisors');
    int divisorSet = 1;
    final divisorArray = <int>[];
    String? divisors = stdin.readLineSync();
    if (divisors != null) {
      divisorSet = int.parse(divisors);
    }
    for (var i = 1; i <= divisorSet; i++) {
      if (divisorSet % i == 0) {
        divisorArray.add(i);
      }
    }
    print('The divisors of $divisorSet are: $divisorArray');
  }

  day5() {
    // Take two lists, for example:
    // a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    // b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
    // and write a program that returns a list that contains
    // only the elements that are common between them (without duplicates).
    // Make sure your program works on two lists of different sizes.

    print('Hi $userName, this method returns the intersection of two list');
    print('How many objects do you want your lists A and B to contain?');

    int num1 = int.parse(stdin.readLineSync() ?? '0');
    int num2 = int.parse(stdin.readLineSync() ?? '0');

    final listA = <int>[];
    final listB = <int>[];
    final listC = <int>[];

    for(int i = 0; i < num1; i++){
      listA.add(int.parse(stdin.readLineSync() ??));
    }
    for(int i = 0; i < num2; i++){
      listB.add(stdin.readLineSync() ??);
    }
    for(int x = 0; x < num2; x++){
      for(int y = 0; y < num1; y++){
        if(listB[x] == listA[y]){
          listC.add(listB[x]);
        }
      }
    }print (listC);
   

    print(listA);

    var fixedLen = List(3);
    fixedLen.length = 2;
  }
}
