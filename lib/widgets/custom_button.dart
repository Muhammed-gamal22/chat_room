import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPress;
  final Function width;
  CustomButton({@required this.text, @required this.onPress, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Material(
        elevation: 10,

        color: Colors.blue,
        borderRadius: BorderRadius.circular(25),
        child: MaterialButton(

          onPressed: onPress,
          minWidth: width == null ? 200 : width,
          child: Text(text,
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
