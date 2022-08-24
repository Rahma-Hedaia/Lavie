import 'package:flutter/material.dart';
import 'package:lavie/HomePage.dart';

class LoginOrSignup extends StatefulWidget {
  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  bool loginOrSignup = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Group1000003299.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/images/Group1000003302.png')),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  textColor: Colors.green,
                  disabledTextColor: Color.fromARGB(255, 138, 138, 138),
                  disabledColor: Colors.white,
                  height: 50,
                  child: Text('Signup',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto')),
                  shape:
                      Border(bottom: BorderSide(color: Colors.green, width: 3)),
                  onPressed: () {
                    loginOrSignup =false;
                    setState(() {

                    });
                  },
                ),
                FlatButton(
                  textColor: Colors.green,
                  disabledTextColor: Color.fromARGB(255, 138, 138, 138),
                  disabledColor: Colors.white,
                  height: 50,
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto')),
                  shape:
                      Border(bottom: BorderSide(color: Colors.green, width: 3)),
                  onPressed: () {
                    loginOrSignup = true;
                    setState(() {

                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            if (loginOrSignup)
              Column(
                children: [
                  TextFormField(
                    //controller: fullNameController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintStyle: TextStyle(color: Color(0x6F6F6F)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    //controller: fullNameController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintStyle: TextStyle(color: Color(0x6F6F6F)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                        return HomePage();
                      }));
                    },
                    child: Text(
                      "Login",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Roboto'),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 26, 188, 0),
                        minimumSize: const Size.fromHeight(46.24),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            if (!loginOrSignup)
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('First Name',
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 111, 111)))),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    //controller: fullNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Last Name',
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 111, 111)))),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    //controller: fullNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email',
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 111, 111)))),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    //controller: fullNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password',
                          style: TextStyle(
                              color: Color.fromARGB(255, 111, 111, 111)))),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    //controller: fullNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                        return HomePage();
                      }));
                    },
                    child: Text(
                      "Login",
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'Roboto'),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 26, 188, 0),
                        minimumSize: const Size.fromHeight(46.24),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ],
              ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'or continue with',
                    style: TextStyle(
                        color: Color.fromARGB(255, 151, 151, 151),
                        fontFamily: 'Roboto'),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Google.png'),
                SizedBox(
                  width: 25,
                ),
                Image.asset('assets/images/Facebook.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
