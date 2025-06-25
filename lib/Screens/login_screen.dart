import 'package:chart_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final  user = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),

      body: Form(
        key: user,
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
                 
        
                 if(user.currentState!.validate()){
        
                 }
        
        
        
             }, child: Text("Login")),
        
             SizedBox(height: 15,),
        
             Text("Not Have An Account ? ",style: TextStyle(fontSize: 13),),
        
             TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
             }, child:Text("Sign Up",style: TextStyle(fontSize: 13),)),
          ],
        ),
      ),
    );
  }
}
