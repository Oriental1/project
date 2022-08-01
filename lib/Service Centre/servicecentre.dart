import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Service%20Centre/body.dart';
import 'package:project/model/user_data.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //controllers
    HomeController hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Service Centre',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500), 
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: chat(hc),
    );
  }
}


class HomeController extends GetxController {
  List<UserData> data = [
    UserData(
        name: 'David Skyrius',
        contact: 1234567890,
        profilePic:
            'https://images.pexels.com/photos/2129796/pexels-photo-2129796.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Drew Williams',
        contact: 2134567890,
        profilePic:
            'https://images.pexels.com/photos/3568520/pexels-photo-3568520.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Andy Vu',
        contact: 1812345825,
        profilePic:
            'https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Roberto Nickson',
        contact: 26452185285,
        profilePic:
            'https://images.pexels.com/photos/2775196/pexels-photo-2775196.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Aidan Roof',
        contact: 23654654218,
        profilePic:
            'https://images.pexels.com/photos/2449600/pexels-photo-2449600.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Mayu',
        contact: 24656458789,
        profilePic:
            'https://images.pexels.com/photos/6348820/pexels-photo-6348820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Scott Webb',
        contact: 4556464565,
        profilePic:
            'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Stephan Seeber',
        contact: 3265764885,
        profilePic:
            'https://images.pexels.com/photos/1054218/pexels-photo-1054218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Sebastian Voortman',
        contact: 1945641318,
        profilePic:
            'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ];
}


