import 'package:flutter/material.dart';

class CardsInList extends StatelessWidget {
  const CardsInList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/Background - 2022-08-09T145931 3.png'),
                Text('1')
              ],
            ),
            ListTile(
              title: Text('GARDENIA PLANT',
                  style: TextStyle(color: Colors.black, fontFamily: 'Roboto')),
              subtitle: Text('70 EGP',
                  style: TextStyle(color: Colors.black, fontFamily: 'Roboto')),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8,right: 8,bottom: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add to Cart',
                      style: TextStyle(color: Colors.white, fontFamily: 'Roboto')),
                  style: ElevatedButton.styleFrom(
                    // minimumSize: Size(double.infinity, 20),
                      primary: Color.fromARGB(255, 26, 188, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size.fromHeight(35),
                  ),

                ),
              ),
            ),
          ],
        ),
      );
  }
}
