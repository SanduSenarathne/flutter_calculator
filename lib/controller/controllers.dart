class Controllers {
  String formularText = '0';
  String answerText = '0';

  int firstnum = 0;
  int secondnum = 0;
  String result = '';
  String operation = '';

  void handleClick(String value) {
    //print('$value');
    if (value == 'C') {
      firstnum = 0;
      secondnum = 0;
      result = '';
      operation = '';
      formularText = '';
    } else if (value == '+' ||
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
    answerText = result; // Update the class variable
  }
}
