import 'package:chart_app/Blocs/Authbloc/bloc/auth_bloc.dart';
import 'package:chart_app/Repository/repo.dart';
import 'package:chart_app/Screens/splash_screen.dart';
import 'package:chart_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(AuthRepository()),
      child: MaterialApp(home: SplashScreen()),
    );
  }
}
