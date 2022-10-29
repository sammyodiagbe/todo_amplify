import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';

class AppAuthProvider extends ChangeNotifier {
  bool isAuthenticated = false;

  late AuthUser user;

  Future<void> createUserAccount(
      String username, String email, String password) async {
    try {
      final userAttributes = <CognitoUserAttributeKey, String>{
        CognitoUserAttributeKey.email: email,
        CognitoUserAttributeKey.phoneNumber: "+134267892"
      };

      final result = await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: CognitoSignUpOptions(userAttributes: userAttributes),
      );
      print(result.isSignUpComplete);
    } catch (err) {
      safePrint("Something went wrong $err");
    }
  }
}
