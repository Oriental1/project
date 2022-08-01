import 'package:flutter/material.dart';
import 'package:project/Form/form.dart';
import 'package:project/model/user_data.dart';

Widget chat(hc) {
  BuildContext context;
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(e.profilePic ?? '')),
                    ),
                    child: Container(),
                  ),
                  const SizedBox(width: 10),
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
                      ]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.insert_drive_file),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyForm(),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ))
        .toList(),
  );
}
