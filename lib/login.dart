import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var _username1controller = TextEditingController();
  var _userpassword1controller = TextEditingController();
  bool _username1 = false;
  bool _userpassword1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Authentication',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: TextField(
                  controller: _username1controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                    labelText: 'Name',
                    errorText: _username1 ? 'name value can\'t Be Empty' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: TextField(
                  controller: _userpassword1controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    labelText: 'Password',
                    errorText: _userpassword1
                        ? 'password value can\'t Be Empty'
                        : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.teal,
                              textStyle: TextStyle(fontSize: 20.0)),
                          onPressed: () {
                            setState(() {
                              _username1controller.text.isEmpty
                                  ? _username1 = true
                                  : _username1 = false;
                              _userpassword1controller.text.isEmpty
                                  ? _userpassword1 = true
                                  : _userpassword1 = false;
                            });
                          },
                          child: Text(
                            'Signin',
                          )),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Container(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.teal,
                              textStyle: TextStyle(fontSize: 20.0)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => register()));
                          },
                          child: Text(
                            'Signup',
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  var _usernamecontroller = TextEditingController();
  var _userpasswordcontroller = TextEditingController();
  var _useremailcontroller = TextEditingController();
  var _usercontactcontroller = TextEditingController();
  bool _username = false;
  bool _useremail = false;
  bool _usercontact = false;
  bool _userpassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signup page',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: TextField(
                  controller: _usernamecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                    labelText: 'Name',
                    errorText: _username ? 'name value can\'t be Empty' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: TextField(
                  controller: _useremailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Email',
                    labelText: 'Email',
                    errorText:
                        _useremail ? 'Email value can\'t be Empty' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: TextField(
                  controller: _usercontactcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                    labelText: 'Contact',
                    errorText:
                        _usercontact ? 'contact value can\'t be Empty' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                child: TextField(
                  controller: _userpasswordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    labelText: 'Password',
                    errorText:
                        _userpassword ? 'password value can\'t be Empty' : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.teal,
                              textStyle: TextStyle(fontSize: 20.0)),
                          onPressed: () {
                            setState(() {
                              _usernamecontroller.text.isEmpty
                                  ? _username = true
                                  : _username = false;
                              _useremailcontroller.text.isEmpty
                                  ? _useremail = true
                                  : _useremail = false;
                              _usercontactcontroller.text.isEmpty
                                  ? _usercontact = true
                                  : _usercontact = false;
                              _userpasswordcontroller.text.isEmpty
                                  ? _userpassword = true
                                  : _userpassword = false;
                            });
                          },
                          child: Text(
                            'Register',
                          )),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Container(
                      child: TextButton(
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.teal,
                              textStyle: TextStyle(fontSize: 20.0)),
                          onPressed: () {
                            setState(() {
                              _usernamecontroller.text = "";
                              _useremailcontroller.text = "";
                              _usercontactcontroller.text = "";
                              _userpasswordcontroller.text = "";
                            });
                          },
                          child: Text(
                            'Reset',
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
