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
        name: 'David Skyrius Service',
        contact: 1234567890,
        profilePic:
            'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: "Drew Williams's",
        contact: 2134567890,
        profilePic:
            'https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: 'Andy Vu',
        contact: 1812345825,
        profilePic:
            'https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: "RobertNick's Service",
        contact: 26452185285,
        profilePic:
            'https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: 'Aidan Roof',
        contact: 23654654218,
        profilePic:
            'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: "Mayu's Wood Repairing",
        contact: 24656458789,
        profilePic:
            'https://images.unsplash.com/photo-1538688525198-9b88f6f53126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: 'Scott Webb Furniture',
        contact: 4556464565,
        profilePic:
            'https://images.unsplash.com/photo-1616486338812-3dadae4b4ace?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZnVybml0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: 'Stephan Seeber Upholstery',
        contact: 3265764885,
        profilePic:
            'https://images.unsplash.com/photo-1550226891-ef816aed4a98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZ1cm5pdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60'),
    UserData(
        name: 'Sebastian Voortman',
        contact: 1945641318,
        profilePic:
            'https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZ1cm5pdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1000&q=60'),
  ];
}


