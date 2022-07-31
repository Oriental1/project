
import 'package:flutter/material.dart';
import 'package:project/model/user_data.dart';

Widget chat(hc) {
  
  return ListView(
    children: hc.data
        .map<Widget>((UserData e) => Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 5,
                bottom: 5,
              ),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(e.profilePic ?? '')),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name == null ? '' : e.name!,
                          style: const TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Text(
                              e.age == null ? '' : e.age!.toString(),
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 59, 58, 58)),
                            ),
                            const Text(
                              " - ",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 61, 61, 61)),
                            ),
                            Text(
                              e.addr == null ? '' : e.addr!,
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 52, 52, 52)),
                            ),
                          ],
                        )
                      ]),
                ],
              ),
            ))
        .toList(),
  );
}