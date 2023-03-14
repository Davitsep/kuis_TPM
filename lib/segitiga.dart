import 'package:flutter/material.dart';
import 'package:kuis_tpm/keliling_segitiga.dart';
import 'luas_segitiga.dart';

class Segitiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuis TPM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LuasSegitiga()),
                      );
                    },
                    child: Text('Luas Segitiga'))),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: 40.0,
                height: 40.0,
              ),
            ),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KelilingSegitiga()),
                      );
                    },
                    child: Text('Keliling Segitiga'))),
          ],
        ),
      ),
    );
  }
}
