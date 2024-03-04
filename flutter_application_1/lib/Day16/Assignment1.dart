import 'package:flutter/material.dart';
// import 'dart:collection';

/*void main() {
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
    );
  }
}

bool checkPalindrome(int? num) {
  int? num2 = num;
  int? total = 0;
  while (num != 0) {
    int rem = num! % 10;
    total = total! * 10 + rem;
    num = num ~/ 10;
  }

  if (num2 == total) {
    return true;
  } else {
    return false;
  }
}

bool checkArmStrong(int? num) {
  int? n1 = num;
  int? n2 = num;
  int? n3 = num;
  int? count = 0;

  while (n1 != 0) {
    n1 = n1! ~/ 10;
    count = count! + 1;
  }

  int arm = 0;

  while (n2 != 0) {
    int rem = n2! % 10;
    int temp = 1;
    for (int i = 0; i < count!; i++) {
      temp *= rem;
    }
    arm += temp;
    n2 = n2 ~/ 10;
  }

  return arm == n3 ? true : false;
}

bool checkStrong(int? num) {
  int? n1 = num;
  int? n2 = num;
  int armStrong = 0;

  while (n1 != 0) {
    int rem = n1! % 10;
    int rem2 = rem;
    int temp = 1;
    for (int i = 0; i < rem; i++) {
      temp = temp * rem2;
      rem2--;
    }
    armStrong += temp;
    n1 = n1 ~/ 10;
  }
  return armStrong == n2 ? true : false;
}

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  final List<int> intList = [153, 222, 370, 444, 145, 100];

  int? counter = 0;
  int? counter2 = 0;
  int? counter3 = 0;
  int count = 0;
  int count2 = 0;
  int count3 = 0;

  void palindrome() {
    setState(() {
      // intList[counter = counter! + 1];
      bool val = checkPalindrome(intList[counter!]);
      if (counter! < intList.length - 1) {
        counter = counter! + 1;
      } else {
        counter = 0;
        count = 0;
      }
      if (val == true) {
        ++count;
      }
    });
  }

  void armStrong() {
    setState(() {
      bool val = checkArmStrong(intList[counter2!]);
      if (counter2! < intList.length - 1) {
        counter2 = counter2! + 1;
      } else {
        counter2 = 0;
        count2 = 0;
      }
      if (val == true) {
        count2++;
      }
    });
  }

  void strong() {
    setState(() {
      bool val = checkStrong(intList[counter3!]);
      if (counter3! < intList.length - 1) {
        counter3 = counter3! + 1;
      } else {
        counter3 = 0;
        count3 = 0;
      }
      if (val == true) {
        count3++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        title: const Text(
          "List of Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //----------- Palindrome Number UI -----------------
            Text(
              "${intList[counter!]}",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ), // List Elements
            const SizedBox(
              height: 20,
            ),

            // const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: () {
                  palindrome();
                },
                child: const Text("Next")),

            const SizedBox(
              height: 20,
            ),
            Text(
              "Count of PALINDROME numbers is $count",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 30,
            ),

            //----------- ArmStrong Number UI ----------------
            Text(
              "${intList[counter2!]}",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ), // List Elements
            const SizedBox(
              height: 20,
            ),

            // const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: () {
                  armStrong();
                },
                child: const Text("Next")),

            const SizedBox(
              height: 20,
            ),
            Text(
              "Count of ARMSTRONG numbers is $count2",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 30,
            ),

            // --------- Strong Number UI ---------------
            Text(
              "${intList[counter3!]}",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ), // List Elements
            const SizedBox(
              height: 20,
            ),

            // const SizedBox(height: 20,),

            ElevatedButton(
                onPressed: () {
                  strong();
                },
                child: const Text("Next")),

            const SizedBox(
              height: 20,
            ),
            Text(
              "Count of STRONG numbers is $count3",
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
