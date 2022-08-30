import 'package:dicoding_submission/pages/home.dart';
import 'package:flutter/material.dart';

class GetStartedPages extends StatelessWidget {
  const GetStartedPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello User",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://i.picsum.photos/id/607/200/300.jpg?grayscale&hmac=kV7JeqhuSM1D5Qz-NZspSojsI72lFK4yc3sCOBV6igA'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePages(),
            ),
          );
        },
        label: const Text('START'),
        icon: const Icon(Icons.start),
        backgroundColor: Colors.amber,
        splashColor: Colors.black,
        hoverColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
