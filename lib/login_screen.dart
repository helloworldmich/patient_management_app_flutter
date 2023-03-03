import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, this.navigation});

  final dynamic navigation;

  void _onBtnSignInPressed() {
    navigation.pushNamed('PatientList');
  }

  @override
  Widget build(BuildContext context) {
    var userNameController;
    var passwordController;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/assets/logo.jpg',
                  height: 300,
                  width: 300,
                ),
              ],
            ),
            Text(
              'Scarborough Senior Home',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Staff Portal',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: _onBtnSignInPressed,
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: userNameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter the password',
                ),

                // onChanged: valueSetter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
