import 'package:flutter/material.dart';
import 'package:myProject/views/firstpage.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Sign In")),
        ),
        body: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your E-mail'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Password'),
                autofocus: false,
                obscureText: true,
              ),
            ),
            Center(child:Padding(
              padding: const EdgeInsets.symmetric(vertical:16,horizontal:60),
              // ignore: deprecated_member_use
              child:RaisedButton(
                onPressed:(){
                  Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>FirstPage())
          );
                },
                child: Text('Sign In'),
              )
              ),),
              Padding(
                padding:const EdgeInsets.all(8),
                child:Center(child:Text("Need an account? Register",style:TextStyle(fontSize:18,fontWeight:FontWeight.w700)))
              ),
              Padding(
                padding:const EdgeInsets.all(8),
                child:Center(child:Text("Forgot Password?",style:TextStyle(fontSize:18,fontWeight:FontWeight.w700)))
              ),


          ],
        )));
  }
}
