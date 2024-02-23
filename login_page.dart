import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 33.0,
                  vertical: 58.0,
                ),
                child: Column(
                  children: [
                    Text(
                      "Spotilight",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Text(
                          "your digital companion",
                          style: TextStyle(
                            wordSpacing: 5.0,
                            fontSize: 20.0,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0), // Add height to SizedBox as needed
                    SizedBox(height: 8.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 11.0,
                        ),
                        child: SizedBox(
                          width: 70.0,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 13.0,
                        bottom: 10.0,
                      ),
                      child: SizedBox(
                        width: 80.0,
                        child: Divider(
                          indent: 10.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.0),
                    _buildEmailField(context),
                    SizedBox(height: 19.0),
                    _buildPasswordField(context),
                    SizedBox(height: 14.0),
                    _buildRememberMeCheckBox(context),
                    SizedBox(height: 38.0),
                    _buildLoginButton1(context),
                  ], // close Column children
                ), // close Column
              ), // close Container
            ), // close Form
          ), // close SingleChildScrollView
        ),
      ), // close Scaffold
    ); // close MaterialApp
  } // close build method

  Widget _buildEmailField(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.all<Color>(Colors.green),
        ),
        Text(
          'Remember me',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildLoginButton1(BuildContext context) {
    return Container(
      width: double.infinity, // Adjust width as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            Colors.orange,
            Colors.pinkAccent,
            Colors.purple,
          ],
        ),
      ),
      child: OutlinedButton(
        onPressed: () {},
        child: Text('Login'),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(16.0), // Adjust padding as needed
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
