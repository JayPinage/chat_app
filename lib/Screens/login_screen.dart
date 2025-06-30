import 'package:chart_app/Blocs/Authbloc/bloc/auth_bloc.dart';
import 'package:chart_app/Screens/homeScreen.dart';
import 'package:chart_app/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final user = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),

      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {


          return state is AuthLoadingState ?Center(child: CircularProgressIndicator(),): Form(
            key: user,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                    obscureText: true,
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
              
                  ElevatedButton(
                    onPressed: () {
                   
              
              
              
                      if (user.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                        LoginEvent(email: email.text, password: password.text),
                      ); 
              
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                      }
                    },
                    child: Text("Login"),
                  ),
              
                  SizedBox(height: 15),
              
                  Text("Not Have An Account ? ", style: TextStyle(fontSize: 13)),
              
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text("Sign Up", style: TextStyle(fontSize: 13)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
