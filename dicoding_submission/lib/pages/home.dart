import 'package:dicoding_submission/pages/setting.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  bool powerOn = false;
  String textPower = "Deactivated";
  late Color textColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Welcome Back User"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Press the Button to Activate it",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                setState(() {
                  powerOn = !powerOn;
                  textPower = "Active";
                });
              },
              child: Icon(
                Icons.power_settings_new_rounded,
                color: powerOn ? Colors.amber : Colors.grey,
                size: 200.0,
              ),
            ),
            SizedBox(height: 20),
            Text(
              powerOn ? "Active" : "Deactivate",
              style: TextStyle(
                  fontSize: 30, color: powerOn ? Colors.amber : Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(MediaQuery.of(context).size.width, 60),
          primary: Colors.amber,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingPages(),
            ),
          );
        },
        child: Icon(
          Icons.settings,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
