// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Furniture Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 15),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.call),
                        border: InputBorder.none,
                        hintText: 'Phone Number',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),



              // password TextField

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Sign in button

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                
                child: Container(
                    
              margin: const EdgeInsets.all(15),  
              child: FlatButton(  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {},  
                child: const Text('Log in', style: TextStyle(fontSize: 20.0),),  
              ),  
            ),  
          ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member ?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15, color: Colors.black,),
            ),
            onPressed: () {},
            child: const Text('Sign In'),
          ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
