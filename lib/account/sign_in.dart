import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:trip_it_task/account/sign_up.dart';
import 'package:http/http.dart';
import 'package:trip_it_task/main.dart';
import 'package:trip_it_task/response/sign_in_response.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String email = "";
  String password = "";
  bool isPassword = true;
  bool isLoading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purpleAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              Image.asset(
                'assets/images/Logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  height: 400,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 55),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 300,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 80),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 330,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 30),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 120, top: 8),
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        hintText: 'Email',
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter valid email';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        setState(() {
                                          email = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: TextFormField(
                                      obscureText: isPassword,
                                      decoration: InputDecoration(
                                        suffixIcon: GestureDetector(
                                          child: Icon(isPassword
                                              ? Icons.visibility_off_outlined
                                              : Icons.visibility_outlined),
                                          onTap: () {
                                            setState(() {
                                              isPassword = !isPassword;
                                            });
                                          },
                                        ),
                                        hintText: 'Password',
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Enter valid password';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        setState(() {
                                          password = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180),
                                    child: Text(
                                      'Forgot password?',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: isLoading
                                          ? Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            )
                                          : ElevatedButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(18.0),
                                                  ),),
                                                backgroundColor: MaterialStateProperty.all(
                                                  Colors.deepPurple.withOpacity(0.6),
                                                ),),
                                              onPressed: () {
                                                if (_formKey.currentState!.validate()) {
                                                  _formKey.currentState!.save();
                                                  signin();
                                                }
                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  const SizedBox(width: 80),
                                                  Text(
                                                    "Sign in",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  const SizedBox(width: 75),
                                                  Icon(Icons.arrow_forward),
                                                ],
                                              ),
                                            ),
                                    ),
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
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text(
                  'Don’t have an account? SignUp',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signin() async{
    setState(() {
      isLoading = true;
    });

    Response response = await post(Uri.parse('http://alcaptin.com/api/login'),
        body:
        {
          'email' : email,
          'password' : password,
        }
    );

    dynamic jsonResponse = jsonDecode(response.body);
    SignInResponse signInResponse = SignInResponse.fromJson(jsonResponse);
    print('Your data is : ${signInResponse.data?.accessToken}');

    if(response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    }else {
      print('Error');
    }

    setState(() {
      isLoading = false;
    });
  }
}
