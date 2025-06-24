import 'package:chart_app/Screens/sign_up_screen.dart';
import 'package:chart_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {






  @override
  void initState(){

Future.delayed(Duration(seconds: 5),(){
  return login();
});
    super.initState();
  }

  void login(){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));

  }

  void sign(){
Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Splach Screen")));
  }
}
