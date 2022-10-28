import "package:flutter/material.dart";

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create account."),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Field cannot be empty";
                }
              },
              decoration: InputDecoration(),
            ),
            ElevatedButton(
              child: Text('Create account'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
