import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:trip_it_task/account/sign_in.dart';
import 'package:trip_it_task/main.dart';

import '../response/sign_up_response.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String email = "";
  String password = "";
  String name = "";
  String phoneNumber = "";
  bool isPassword = true;
  bool isLoading = false;
  bool checkedBox = false;

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
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/Logo.png',
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 500,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: 400,
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
                          height: 400,
                          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 85),
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
                          height: 438,
                          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                                        left: 120, top: 5),
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: 'Name',
                                      ),
                                      validator: (value){
                                        if(value == null || value.isEmpty){
                                          return "Enter valid name";
                                        }
                                        return null;
                                      },
                                      onSaved: (value){
                                        setState(() {
                                          name = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 3),
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
                                  const SizedBox(height: 3),
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
                                  const SizedBox(height: 3),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: 'phoneNumber',
                                      ),
                                      validator: (value){
                                        if(value == null || value.isEmpty){
                                          return "Enter valid phone number";
                                        }
                                        return null;
                                      },
                                      onSaved: (value){
                                        setState(() {
                                          phoneNumber = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Row(
                                    children: [
                                      Checkbox(
                                        onChanged: (bool? value) {
                                          setState(() {
                                            checkedBox = value!;
                                          });
                                        },
                                        value: checkedBox,
                                      ),
                                      const SizedBox(width: 5),
                                      RichText(
                                        text: TextSpan(
                                          text: "I agree the ",
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "Terms & Conditions ",
                                              style: TextStyle(
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 3),
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
                                                  signup();
                                                }
                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  const SizedBox(width: 80),
                                                  Text(
                                                    "Sign up",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                  const SizedBox(width: 70),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                child: Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signup() async{
    setState(() {
      isLoading = true;
    });

    Response response = await post(Uri.parse("http://alcaptin.com/api/register"),
      body:
      {
        "first_name" : "ahmed",
        "last_name" : "elshora",
        "email": email,
        "password" : password,
        "age" : "28",
        "gender" : "male",
      },
    );

    dynamic jsonResponse = jsonDecode(response.body);
    if(response.statusCode == 200){
      SignUpResponse signUpResponse = SignUpResponse.fromJson(jsonResponse);
      print('Data is : ${signUpResponse.data}');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
    }else{
      print('Error');
    }

    setState(() {
      isLoading = false;
    });
  }
}