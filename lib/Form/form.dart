// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your User name',
                labelText: 'User Name',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter an existing User Name';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                border: InputBorder.none,
                hintText: 'Enter a phone number',
                labelText: 'Phone Number',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Furniture's type",
                labelText: "Please put a Furniture's type",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please do not leave this field empty';
                }
                return null;
              },
            ),
            Container(
                padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: RaisedButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    // It returns true if the form is valid, otherwise returns false
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context).showSnackBar(const SnackBar(
                          content: Text('Data is in processing.')
                        )
                      );
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }
}
