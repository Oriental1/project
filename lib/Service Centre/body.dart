import 'package:flutter/material.dart';
import 'package:project/model/user_data.dart';

Widget chat(hc) {
  return ListView(
    children: hc.data
        .map<Widget>((UserData e) => Container(
              height: 100,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(e.profilePic ?? '')
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.name == null ? '' : e.name!,
                          style: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Conctact- ",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 61, 61, 61)),
                            ),
                            Text(
                              e.contact == null ? '' : e.contact!.toString(),
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 59, 58, 58)),
                            ),
                          ],
                        )
                      ]
                    ),
                ],
              ),
            )
          )
        .toList(),
  );
}
