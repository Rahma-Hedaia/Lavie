import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AppBar(
              flexibleSpace: Image(
                image: AssetImage('assets/images/Rectangle 1022.png'),
                fit: BoxFit.cover,
              ),
              backgroundColor: Colors.transparent,
              actions: [
                Icon(Icons.more_horiz)
              ],
            ),
            Image.asset('assets/images/Ellipse 105.png')
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 80,
                width: 378,
                child: Card(
                  color: Color.fromARGB(255, 243, 254, 241),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/Group 1264.png'),
                      SizedBox(width: 25,),
                      Text('You have 30 pionts',style: TextStyle(
                        fontFamily: 'Open sans',
                        fontSize: 15.88,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Edit Profile',style: TextStyle(fontFamily: 'Roboto',fontWeight: FontWeight.w500,fontSize: 19.88),
                )
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 85,
                width: 378,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  ),
                   borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.image),
                    SizedBox(width: 20,),
                    Text('Change image',style: TextStyle(
                      fontFamily: 'Open sans',
                     fontSize: 17.88,
                     fontWeight: FontWeight.w600,
                    ),),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 85,
                width: 378,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 20,),
                    Text('Change Email',style: TextStyle(
                      fontFamily: 'Open sans',
                      fontSize: 17.88,
                      fontWeight: FontWeight.w600,
                    ),),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
