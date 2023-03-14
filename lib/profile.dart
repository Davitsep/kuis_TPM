import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image/davit.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Davit Septiawan',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200133',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Kelas IF - D',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Hobi : Rebahan & Main Sosmed',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
