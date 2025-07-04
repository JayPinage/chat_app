import 'package:chart_app/Blocs/Authbloc/bloc/auth_bloc.dart';
import 'package:chart_app/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final key = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController country = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),

      body: Form(
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Sign Up", style: TextStyle(fontSize: 20)),
          
              SizedBox(height: 10),
          
              TextFormField(
                obscureText: true,
          
                controller: name,
          
                decoration: InputDecoration(
                  hintText: "Enter Name",
          
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
          
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Entre Name";
                  }
                  return null;
                },
              ),
          
              SizedBox(height: 10),
          
              TextFormField(
                controller: country,
          
                decoration: InputDecoration(
                  hintText: "Enter Counutry",
          
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
          
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Entre Country";
                  }
                  return null;
                },
              ),
          
              SizedBox(height: 15),
          
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
          
              SizedBox(height: 15),
          
              TextFormField(
                controller: password,
          
                decoration: InputDecoration(
                  hintText: "Enter Password With Six Digits",
          
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
          
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    context.read<AuthBloc>().add(
                      SigninEvent(email: email.text, password: password.text),
                    );
          
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homescreen()),
                    );
                  }
                },
                child: Text("Sign Up", style: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
