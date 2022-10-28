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
        key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                },
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('Create account'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('form field is valid');
                  } else {
                    print('invalid data in form field');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
