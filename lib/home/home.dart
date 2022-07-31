import 'package:flutter/material.dart';
import 'package:project/Profile/profile.dart';
import 'package:project/Service%20Centre/servicecentre.dart';
import 'package:project/login_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const CircleAvatar(
            radius: 80, // Image radius
            backgroundImage: NetworkImage("https://static-cse.canva.com/blob/903205/1600w-EW4cggXkgbc.jpg"),
            ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.w900 ),
              ),
            child: const Text('Home'),
            onPressed: () {},
          ),
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
                        "Service Centre", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                  ),
            ),
            TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
            child: const Text('Service History',),
          ),

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
                        "Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                  ),
            ),

          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20,  fontWeight: FontWeight.w500),
            ),
            onPressed: ()=> Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      ), 
            child: const Text('Log Out',),
          ),

          ],
        ),
      ),
    );
  }
}
