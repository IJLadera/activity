import 'package:flutter/material.dart';

void main (){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget {

  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login!!!"),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.code),
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: emailAddress,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "email address",
              ),
            ),
            TextFormField(
              controller: password,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: "password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  print(emailAddress.text);
                  print(password.text);
                },
                child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}