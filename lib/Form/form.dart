// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  late String _username; //username
  late String _serv; //servicecenter
  late int _contact; //conctact
  late String _tof; //Type of furniture
  late int _exnodays; //expected number of days
  late String _serdes; //service Description

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//username
  Widget _buildUsername() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Username'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'UserName is Required';
        }
        return null;
      },
      onSaved: (value) {
        _username = value!;
      },
    );
  }
//servicecenter
  Widget _buildServiceCenter() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Service Center Username'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Service Center Username is Required';
        }

        if (value.isEmpty) {
          return 'Service Center UserName is Required';
        }
        return null;
      },
      onSaved: (value) {
        _serv = value!;
      },
    );
  }

  //Contact
  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      maxLength: 10,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (value) {
        _contact = value! as int;
      },
    );
  }

  //type of furniture
  Widget _buildTOF() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Type of Furniure'),
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Type of Furniture field is Required';
        }

        return null;
      },
      onSaved: (value) {
        _tof = value!;
      },
    );
  }

  //Contact
  Widget _buildNOD() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Expected number of days to be finished'),
      keyboardType: TextInputType.phone,
      maxLength: 3,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please suggest an expected number of days to be finished';
        }
        return null;
      },
      onSaved: (value) {
        _contact = value! as int;
      },
    );
  }

  //Description
  Widget _buildDescription() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'What to buy/make or repair. If any, suggest!!!'),
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please suggest about your visit';
        }
        return null;
      },
      onSaved: (value) {
        _tof = value!;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Service Center Form")),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildUsername(),
                _buildServiceCenter(),
                _buildPhoneNumber(),
                _buildTOF(),
                _buildNOD(),
                _buildDescription(),
                const SizedBox(height: 100),
                OutlinedButton(
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    _formKey.currentState!.save();

                    print(_username);
                    print(_contact);
                    print(_tof);
                    print(_exnodays);
                    print(_serdes);
                    print(_serv);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
