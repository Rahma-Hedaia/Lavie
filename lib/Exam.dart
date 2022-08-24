import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  int counter = 0;

  List<Map> qandAnswer = [
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
          'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
          'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
          'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
          'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
          'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
          'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
      'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
      'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
      'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
      'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
      'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
      'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
      'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
      'The user experience is the attitude the UX designer has about a product.'
    },
    {
      'Question': 'What is the user experience?',
      'answer1': 'The user experience is how the developer feels about a user.',
      'answer2':
      'The user experience is how the user feels about interacting with or experiencing a product.',
      'answer3':
      'The user experience is the attitude the UX designer has about a product.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Course Exam',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontSize: 19,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 26, 188, 0), //change your color here
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Question
            Row(
              children: [
                Text('Question',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 36,
                        fontWeight: FontWeight.w500)),
                Text('${counter + 1}',
                    style: TextStyle(
                        color: Color.fromARGB(255, 26, 188, 0),
                        fontFamily: 'Roboto',
                        fontSize: 36,
                        fontWeight: FontWeight.w500)),
                Text('/ ${qandAnswer.length}',
                    style: TextStyle(
                        color: Color.fromARGB(255, 151, 151, 151),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('${qandAnswer[counter]['Question']}',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 26, 188, 0)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Text('${qandAnswer[counter]['answer1']}',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                  Spacer(),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    color: Color.fromARGB(255, 26, 188, 0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 26, 188, 0)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Expanded(
                    child: Text('${qandAnswer[counter]['answer2']}',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    color: Color.fromARGB(255, 26, 188, 0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 26, 188, 0)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Expanded(
                    child: Text('${qandAnswer[counter]['answer3']}',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    color: Color.fromARGB(255, 26, 188, 0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
               if(counter!=0) ElevatedButton(
                    onPressed: () {
                      counter--;
                      setState(() {

                      });
                    },
                    child: Text(
                      'Back',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Roboto'),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(172, 43),
                        primary: Color.fromARGB(255, 26, 188, 0))),
                Spacer(),
                if(counter!=qandAnswer.length-1) ElevatedButton(
                    onPressed: () {
                      counter++;
                    setState(() {

                    });
                    },
                    child: Text(
                      'Next',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Roboto'),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(172, 43),
                        primary: Color.fromARGB(255, 26, 188, 0))),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool checkCounter(int counter){
    if (counter==0){
      return false;
    }else{
      return true;
    }
  }
}
