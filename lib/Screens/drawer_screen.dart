import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerScreen extends StatefulWidget {
  double radius;

  String personname;
  String personcountry;
  String personemail;

  DrawerScreen({super.key, required this.radius, required this.personname,required this.personcountry,required this.personemail});
  @override
  State<DrawerScreen> createState() => _DrawerScreen();
}

class _DrawerScreen extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            radius: widget.radius,
            child: Icon(size: 50, Icons.person),
          ),

          SizedBox(height: 10),

          ListTile(
            trailing:IconButton(onPressed: (){
              print("hello");
            }, icon:Icon(Icons.edit)),
            leading: Text(
              "Name:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            title: Text(
              widget.personname,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: const Color.fromARGB(255, 10, 140, 142),
              ),
            ),
          ),

        

            ListTile(
            leading: Text(
              "Country:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            title: Text(
              widget.personcountry,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: const Color.fromARGB(255, 10, 140, 142),
              ),
            ),
          ),

          
            ListTile(
            leading: Text(
              "Email:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            title: Text(
              widget.personemail,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: const Color.fromARGB(255, 10, 140, 142),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
