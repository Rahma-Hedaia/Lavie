import 'package:flutter/material.dart';

class Cart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: Text('My Cart',style: TextStyle(
    color: Colors.black,
    fontFamily: 'Roboto',
    fontSize: 25,
    fontWeight: FontWeight.w700,
  ),),
),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/cartisempty.png'),
            SizedBox(
              height: 40,
            ),
            Text('Your cart is empty',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
                fontFamily: 'Roboto'
            ),),
            SizedBox(
              height: 20,
            ),
            Text('Sorry, the keyword you entered cannot be found, please check again or search with another keyword.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: 'Roboto',
              color: Color.fromARGB(102, 33, 33, 33)
            ),)
          ],
        ),
      ),
    );
  }
}
