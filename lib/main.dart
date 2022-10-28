import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_todo/amplifyconfiguration.dart';
import 'package:amplify_todo/pages/auth/signup.dart';
import 'package:amplify_todo/pages/home.dart';
import 'package:amplify_todo/providers/authProvider.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // get the tool
    final auth = AmplifyAuthCognito();

    // add tool to plugin
    await Amplify.addPlugins([auth]);

    // configure amplify
    await Amplify.configure(amplifyconfig);
  } catch (err) {
    safePrint("Something went wrong $err");
  }

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _initializeAmplify();
  }

  Future<void> _initializeAmplify() async {
    try {
      // get the tool
      final auth = AmplifyAuthCognito();

      // add tool to plugin
      await Amplify.addPlugins([auth]);

      // configure amplify
      await Amplify.configure(amplifyconfig);
    } catch (err) {
      safePrint("Something went wrong $err");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppAuthProvider(),
      child: MaterialApp(
        home: Signup(),
      ),
    );
  }
}
