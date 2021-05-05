import 'package:chat_room/screens/login_screen.dart';
import 'package:chat_room/screens/register_screen.dart';
import 'package:chat_room/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                 tag:"logo",
                 child:Container(
                   width:100,
                   child:Image.asset("assets/images/chat.png"),
                 ),
                ),
                  Text(
               'Chat',style:TextStyle(
                 fontSize:19,
                 color:Colors.black
               ) ,
             ),
             Text(
               'room',style:TextStyle(
                 fontSize:19,
                 color:Colors.blue
               ) ,
             ),

              ],
            ),
          SizedBox(height:50.0,),
          CustomButton(
            text:'Login',
            onPress:(){
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
          ),
          SizedBox(height:10,),
          CustomButton(
            text:'Register',
            onPress:(){
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
          ),
          ],
        ),
      ),
    );
  }
}