import 'package:flutter/material.dart';
import 'menu.dart';
import 'main.dart';

class KelilingSegitiga extends StatefulWidget {
  @override
  _HitungState createState() => _HitungState();
}

class _HitungState extends State<KelilingSegitiga> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  int? result = 0, num1 = 0, num2 = 0, num3 = 0;
  hitung() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      num3 = int.parse(controller3.text);
      result = num1! + num2! + num3!;
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
                  labelText: "Sisi 1",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Sisi 2",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller3,
              decoration: InputDecoration(
                  labelText: "Sisi 3",
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
                    controller3.clear();
                  },
                  child: Text("Hitung")),
            ),
          ],
        ),
      ),
    );
  }
}
