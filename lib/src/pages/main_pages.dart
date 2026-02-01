import 'package:app_s2/src/controllers/main_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPages extends StatelessWidget {
  MainPages({super.key});
  var _con = Get.put(MainControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("S2", style: TextStyle(color: Colors.white)),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Count Number',
              style: GoogleFonts.alexandria(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Obx(() => Text('Result: ${_con.number}')),
            Obx(() {
              return Text(
                'Result: ${_con.number}',
                style: TextStyle(fontSize: 100),
              );
            }),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _con.counterNumber,
                  child: Text('Increment'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _con.mimusNumber,
                  child: Text('Decrement'),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
