import 'package:chat_room/screens/chat_screen.dart';
import 'package:chat_room/widgets/custom_button.dart';
import 'package:chat_room/widgets/custom_text-field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static final routeName = "register_screen";
  final _formKey = GlobalKey<FormState>();
  String _userName, _email, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        title:Text("Register"),


      ),
        body: Form(

            key: _formKey,
            child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: ListView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'Reg',
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                      Text(
                        'ister',
                        style: TextStyle(color: Colors.blue, fontSize: 32),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      hint: "Username",
                      onClick: (String val) {
                        _userName = val;
                      }),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      hint: "Email",
                      onClick: (String val) {
                        _userName = val;
                      }),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                      hint: "Password",
                      onClick: (String val) {
                        _email = val;
                      }),
                       SizedBox(
                    height: 15,
                  ),
                  Builder(
                    builder: (ctx) => CustomButton(
                        text: "Register",
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
