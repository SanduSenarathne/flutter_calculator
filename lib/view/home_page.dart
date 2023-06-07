import 'package:flutter/material.dart';
import 'package:calculator/controller/controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controllers calculatorController = Controllers();

  String formularText = '0';
  String answerText = '0';

  int firstnum = 0;
  int secondnum = 0;
  String result = '';
  String operation = '';

  void handleClick(String value) {
    calculatorController.handleClick(value);

    setState(() {
      formularText = calculatorController.formularText;
      answerText = calculatorController.answerText;
    });
  }

  /*void handleClick(String value) {
    //print('$value');
    if (value == '+' ||
        value == '-' ||
        value == 'X' ||
        value == '/' ||
        value == '%') {
      firstnum = int.parse(answerText);
      result = '';
      operation = value;
    } else if (value == '=') {
      secondnum = int.parse(answerText);
      if (operation == '+') {
        result = (firstnum + secondnum).toString();
        formularText =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        result = (firstnum - secondnum).toString();
        formularText =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'X') {
        result = (firstnum * secondnum).toString();
        formularText =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        result = (firstnum / secondnum).toString();
        formularText =
            firstnum.toString() + operation.toString() + secondnum.toString();
      } else if (operation == '%') {
        result = (firstnum % secondnum).toString();
        formularText =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      result = int.parse(answerText + value).toString();
    }
    setState(() {
      answerText = result;
    });
  }*/

  /*void clearValues() {
    setState(() {
      List<String> clearedValues = Controllers.clearVariables();
      //List<int> clearmemory = Controllers.clearmemory();
      formularText = clearedValues[0];
      answerText = clearedValues[1];
      //firstnum = clearmemory[0];
      //secondnum = clearmemory[0];
      //result = clearedValues[2];
      //operation = clearedValues[3];
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 4, 54, 80),
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 4, 54, 80),
        child: Column(
          children: [
            Expanded(
              child: Container(
                //key: Key('formular_Container'),
                alignment: Alignment.bottomRight,
                child: Text(
                  formularText,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              //key: Key('answer_Container'),
              alignment: Alignment.bottomRight,
              child: Text(
                answerText,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: const Text(
                '',
                style: TextStyle(fontSize: 40),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 3, 176, 214),
              thickness: 1.0,
            ),
            Expanded(
              flex: 5,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      handleClick('C');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      'C',
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '()',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('%');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '%',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('/');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '/',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('1');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('2');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('3');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('X');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      'X',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('4');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('5');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('6');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '6',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('+');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('7');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '7',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('8');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '8',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('9');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '9',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('-');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '-',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(255, 56, 171, 233)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('.');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '.',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('0');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('000');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 4, 54, 80),
                    ),
                    child: const Text(
                      '000',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      handleClick('=');
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, double.infinity),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: const Color.fromARGB(255, 56, 171, 233),
                    ),
                    child: const Text(
                      '=',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
