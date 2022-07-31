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
          'Chat',
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
        age: 27,
        addr: 'Los Angeles',
        profilePic:
            'https://images.pexels.com/photos/2129796/pexels-photo-2129796.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Drew Williams',
        age: 21,
        addr: 'Canada',
        profilePic:
            'https://images.pexels.com/photos/3568520/pexels-photo-3568520.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Andy Vu',
        age: 18,
        addr: 'Argentina',
        profilePic:
            'https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Roberto Nickson',
        age: 26,
        addr: 'Miami',
        profilePic:
            'https://images.pexels.com/photos/2775196/pexels-photo-2775196.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Aidan Roof',
        age: 23,
        addr: 'New York',
        profilePic:
            'https://images.pexels.com/photos/2449600/pexels-photo-2449600.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Mayu',
        age: 24,
        addr: 'Thailand',
        profilePic:
            'https://images.pexels.com/photos/6348820/pexels-photo-6348820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Scott Webb',
        age: 45,
        addr: 'Iceland',
        profilePic:
            'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Stephan Seeber',
        age: 32,
        addr: 'London',
        profilePic:
            'https://images.pexels.com/photos/1054218/pexels-photo-1054218.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    UserData(
        name: 'Sebastian Voortman',
        age: 19,
        addr: 'Russia',
        profilePic:
            'https://images.pexels.com/photos/189349/pexels-photo-189349.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ];
}