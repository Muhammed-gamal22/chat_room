import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function onClick;
  CustomTextField({@required this.hint, @required this.onClick});
  String _errorMessage(String hint) {
    switch (hint) {
      case "Username": return "username is empty";
      case 'Password':return 'password is empty';
      case 'Email':return 'email is empty';
        break;
     default:
         return 'error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          hintText:hint,
          hintStyle:TextStyle(
            color: Colors.black,
          ),
        ),
        validator: (val) {
          if (val.isEmpty) {
             return _errorMessage(hint);
          }
        },
        onSaved:onClick,
      ),
    );
  }
}
