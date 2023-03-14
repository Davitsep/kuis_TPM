import 'package:flutter/material.dart';

class LuasSegitiga extends StatefulWidget {
  @override
  _HitungState createState() => _HitungState();
}

class _HitungState extends State<LuasSegitiga> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double? result = 0, num1 = 0, num2 = 0;
  hitung() {
    setState(() {
      num1 = double.parse(controller1.text);
      num2 = double.parse(controller2.text);
      result = num1! * num2! / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Hitung Luas Segitiga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Hasil : $result",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Nilai Alas",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Nilai Tinggi",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    hitung();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("Hitung")),
            ),
          ],
        ),
      ),
    );
  }
}
