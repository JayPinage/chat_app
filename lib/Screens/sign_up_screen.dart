


import 'package:flutter/material.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final key=GlobalKey<FormState>();

TextEditingController email =TextEditingController();
TextEditingController password=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),

      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text("Login", style: TextStyle(fontSize: 20)),
        
            SizedBox(height: 10),
        
            TextFormField(
          
              controller: email,
        
              decoration: InputDecoration(
                hintText: "Enter Email",
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.deepOrange),
                ),
              ),
        
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Entre Email";
                }
                return null;
              },
            ),
        
            SizedBox(height: 10),
        
            TextFormField(
        
              controller: password,
        
              decoration: InputDecoration(
                hintText: "Enter Password With six Digits",
        
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.deepOrange),
                ),
              ),
        
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Entre Password";
                }
                return null;
              },
            ),
        
             SizedBox(height: 15),
        
             ElevatedButton(onPressed: (){
                 
        
                 if(key.currentState!.validate()){
        
                 }
        
        
        
             }, child: Text("Sign Up",style: TextStyle(fontSize: 15),)),
        
          ],
        ),
      ),
    );
}
}