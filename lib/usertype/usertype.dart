import 'package:flutter/material.dart';
import 'package:project/home/home.dart';

class Usertype extends StatefulWidget {
  const Usertype({Key? key}) : super(key: key);

  @override
  State<Usertype> createState() => _UsertypeState();
}

class _UsertypeState extends State<Usertype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //Header
              const Text(
                'Select User Type',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 64),
                            
              // customer button
              SizedBox(
                width: 250,
                height: 64,
                  child: ElevatedButton(  
                    onPressed: ()=> Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      ), 
                    child: const Text('Customer', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                    ),
                  ),
                ),
                
              const SizedBox(height: 64),
              //service centre
              SizedBox(
                width: 250,
                height: 64,
                  child: ElevatedButton(  
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      ),
                    child: const Text('Service Centre', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                    ),
                  ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
