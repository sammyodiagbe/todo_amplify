import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_todo/amplifyconfiguration.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAuthSession();
  }

  getAuthSession() async {
    if (Amplify.isConfigured) {
      final result = await Amplify.Auth.fetchAuthSession();
      print(result);
    } else {
      print("Amplify is not configured");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text('Click me'),
            onPressed: () {
              // getAuthSession();
            },
          ),
        ),
      ),
    );
  }
}
