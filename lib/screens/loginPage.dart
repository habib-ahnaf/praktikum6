import 'package:flutter/material.dart';
import 'package:praktikum6/widgets/soccerWidget.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  // SharedPreferences loginData;
  bool user;
  bool _isHidden = true;

  void _toggle() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    // loginData = await SharedPreferences.getInstance();
    // user = (loginData.getBool('login') ?? true);
    print(user);
    // if (user == false) {
    //   Navigator.pushReplacement(
    //       context, new MaterialPageRoute(builder: (context) => Homepage()));
    // }
  }

  @override
  void dispose() {
    // Membersihkan data yang dicontroller serta di tree
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 30),
        padding: EdgeInsets.only(top: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange,
              Colors.orange[600],
              Colors.yellow[700],
              Colors.yellow[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 40),
                  ),
                  Text(
                    "Selamat Datang di i-Lab!",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                // margin: EdgeInsets.only(right: 10, left: 10, bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(225, 85, 20, .3),
                                  blurRadius: 20,
                                  // spreadRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[200])),
                                ),
                                child: TextField(
                                  controller: usernameController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: "Email",
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey[600],
                                    ),
                                    hintStyle: TextStyle(
                                        fontFamily: 'San Francisco',
                                        color: Colors.grey,
                                        letterSpacing: 0.2),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[200])),
                                ),
                                child: TextField(
                                  // keyboardType: pas,
                                  obscureText: _isHidden,
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: "Password",
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.grey[600],
                                    ),
                                    // suffixIcon: Icon(Icons.visibility),
                                    suffix: InkWell(
                                      onTap: _toggle,
                                      child: Icon(
                                        _isHidden
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    hintStyle: TextStyle(
                                        fontFamily: 'San Francisco',
                                        color: Colors.grey,
                                        letterSpacing: 0.2),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          onPressed: () {
                            print(
                                "On developing :) \nPlease, be patient guys!");
                          },
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              // color: Colors.blue,
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'San Francisco',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          onPressed: () {
                            print(
                                "On developing :) \nPlease, be patient guys!");
                          },
                          child: Text(
                            "Don't have an account yet? Please, register now",
                            style: TextStyle(
                              // color: Colors.blue,
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'San Francisco',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonTheme(
                          minWidth: 230.0,
                          height: 60.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(36)),
                            hoverColor: Colors.orange,
                            color: Colors.orange,
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontFamily: 'San Francisco',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.7,
                                  color: Colors.white),
                            ),
                            onPressed: () {
                              String username = usernameController.text;
                              String password = passwordController.text;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SoccerWidget()));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 62,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 40),
                            ),
                            Image.asset(
                              'assets/images/coding.png',
                              height: 27,
                              width: 35,
                            ),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            Text(
                              "© Copyright 2021-2025",
                              style: TextStyle(
                                fontFamily: 'San Francisco',
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
