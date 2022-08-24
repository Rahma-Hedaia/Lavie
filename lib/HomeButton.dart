import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  String text='';

  HomeButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {},
      child: Text(
        '$text',
        style: TextStyle(
            color: Color.fromARGB(255, 151, 151, 151), fontFamily: 'Roboto'),
      ),
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 248, 248, 248),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    ));
  }
}
