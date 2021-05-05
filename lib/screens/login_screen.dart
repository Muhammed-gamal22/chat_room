import 'package:chat_room/screens/chat_screen.dart';
import 'package:chat_room/widgets/custom_button.dart';
import 'package:chat_room/widgets/custom_text-field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static final routeName = "login_screen";
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
        body: Form(
            key: _formKey,
            child: Container(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: ListView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log',
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                      Text(
                        'in',
                        style: TextStyle(color: Colors.blue, fontSize: 32),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  CustomTextField(
                      hint: "Email",
                      onClick: (String val) {
                        _email = val;
                      }),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      hint: "Password",
                      onClick: (String val) {
                        _password = val;
                      }),
                        SizedBox(
                    height: 15,
                  ),
                  Builder(
                    builder: (ctx) => CustomButton(
                        text: "Login",
                        onPress: () {
                          Navigator.pushNamed(ctx, ChatScreen.routeName);
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ]))));
  }
}
