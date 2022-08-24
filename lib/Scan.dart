import 'package:flutter/material.dart';

class Scan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Meet the Maker_ Nathalie Gibbins _ Rose & Grey 1.png'),
          fit: BoxFit.cover
        )
      ),
    ));
  }
}
