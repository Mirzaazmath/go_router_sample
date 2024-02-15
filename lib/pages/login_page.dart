import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

      Text("Login Page"),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            context.go("/");


          }, child: Text("Login")),
          Container()
        ],

      ),
    );
  }
}
