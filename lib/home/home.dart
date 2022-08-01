// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/Form/form.dart';
import 'package:project/Profile/profile.dart';
import 'package:project/Service%20Centre/servicecentre.dart';
import 'package:project/login_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  //signout function
  signOut() async {
    await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 80, // Image radius
              backgroundImage: NetworkImage(
                  "https://static-cse.canva.com/blob/903205/1600w-EW4cggXkgbc.jpg"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
              ),
              child: const Text('Home'),
              onPressed: () {},
            ),

            //Service Center
            FittedBox(
              child: TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Service(),
                        ),
                      ),
                  child: Row(
                    children: const [
                      Text(
                        "Service Centre",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ),

            //Service Form
            FittedBox(
              child: TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FormScreen(),
                        ),
                      ),
                  child: Row(
                    children: const [
                      Text(
                        "Service Center Form",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ),

            //Profile
            FittedBox(
              child: TextButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profiledetails(),
                        ),
                      ),
                  child: Row(
                    children: const [
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
            ),

            TextButton(
              style: TextButton.styleFrom(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                signOut();
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
