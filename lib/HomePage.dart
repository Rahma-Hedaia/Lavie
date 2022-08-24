import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lavie/CardsinList.dart';
import 'package:lavie/Cart.dart';
import 'package:lavie/Exam.dart';
import 'package:lavie/HomeButton.dart';
import 'package:lavie/Profile.dart';
import 'package:lavie/Scan.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(index: 2,
          backgroundColor: Colors.transparent,
          items: <Widget>[
            GestureDetector(
                child: CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 188, 0),
                    child: Icon(Icons.question_mark,color: Colors.white)),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return Exam();
                  }));
                }),
            GestureDetector(
                child: CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 188, 0),
                    child: Icon(Icons.qr_code_scanner,color: Colors.white)),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return Scan();
                  }));
                }),
            CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 188, 0),child: Icon(Icons.home_outlined,color: Colors.white)),
            CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 188, 0),child: Icon(Icons.notifications,color: Colors.white)),
            GestureDetector(
                child: CircleAvatar(backgroundColor: Color.fromARGB(255, 26, 188, 0),
                    child: Icon(Icons.person,color: Colors.white)),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return Profile();
                  }));
                }),          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
      body: Container(color: Colors.white,
        padding: EdgeInsets.only(left: 15, right: 15, top: 35),
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/Group1000003302.png')),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Expanded(
                child: TextFormField(
                  //controller: fullNameController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 151, 151, 151)),
                    prefixIcon: Icon(Icons.search_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  style: TextStyle(color: Color.fromARGB(255, 151, 151, 151)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 15, bottom: 15, right: 20, left: 20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 188, 0),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    shape: BoxShape.rectangle),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                      return Cart();
                    }));
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 15
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeButton('All'),
                SizedBox(
                  width: 15,
                ),
                HomeButton('Plants'),
                SizedBox(
                  width: 15,
                ),
                HomeButton('Seeds'),
                SizedBox(
                  width: 15,
                ),
                HomeButton('Tools'),
              ],
            ),
            SizedBox(
                height: 25
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  children: [
                    CardsInList(),
                    CardsInList(),
                    CardsInList(),
                    CardsInList(),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
