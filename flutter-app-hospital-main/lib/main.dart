import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthplaceController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _religionController = TextEditingController();
  final TextEditingController _jobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _polyclinicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Enter Your Name'),
            ),
            TextFormField(
              controller: _birthplaceController,
              decoration: InputDecoration(labelText: 'Enter Your Birth Place'),
            ),
            TextFormField(
              controller: _birthdateController,
              decoration: InputDecoration(labelText: 'Enter Your Birth Date'),
            ),
            TextFormField(
              controller: _genderController,
              decoration: InputDecoration(labelText: 'Enter Your Gender'),
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: InputDecoration(labelText: 'Enter Your Phone Number'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Enter Your Email'),
            ),
            TextFormField(
              controller: _religionController,
              decoration: InputDecoration(labelText: 'Enter Your Religion'),
            ),
            TextFormField(
              controller: _jobController,
              decoration: InputDecoration(labelText: 'Enter Your Job'),
            ),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Enter Your Address'),
            ),
            TextFormField(
              controller: _polyclinicController,
              decoration: InputDecoration(labelText: 'Enter Your Polyclinic'),
            ),
            ElevatedButton(
              onPressed: () {
                // Process input data here
                // For example:
                print('Name: ${_nameController.text}');
                print('Birth Place: ${_birthplaceController.text}');
                print('Birth Date: ${_birthdateController.text}');
                print('Gender: ${_genderController.text}');
                print('Phone Number: ${_phoneNumberController.text}');
                print('Email: ${_emailController.text}');
                print('Religion: ${_religionController.text}');
                print('Job: ${_jobController.text}');
                print('Address: ${_addressController.text}');
                print('Polyclinic: ${_polyclinicController.text}');

                // Show submitted data
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Submitted Data"),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${_nameController.text}'),
                            Text('Birth Place: ${_birthplaceController.text}'),
                            Text('Birth Date: ${_birthdateController.text}'),
                            Text('Gender: ${_genderController.text}'),
                            Text('Phone Number: ${_phoneNumberController.text}'),
                            Text('Email: ${_emailController.text}'),
                            Text('Religion: ${_religionController.text}'),
                            Text('Job: ${_jobController.text}'),
                            Text('Address: ${_addressController.text}'),
                            Text('Polyclinic: ${_polyclinicController.text}'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
