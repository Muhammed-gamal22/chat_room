import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final Function onClick;
  final String text;
  SendButton(this.onClick,this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10),
      child: FlatButton(

        onPressed:onClick,
        color:Colors.blue,
        child:Text(text,style:TextStyle(
          color:Colors.white,
          fontSize:19,
        )),
      ),
    );
  }
}
