import 'package:app_s2/src/controllers/main_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            GetBuilder(
              init: _con,
              builder: (value) {
                return Text("${value.myNumber}");
              },
            ),
            //use with Obx
            // Obx(() => Text('Result: ${_con.number}')),
            // Obx(() {
            //   return Text(
            //     'Result: ${_con.number}',
            //     style: TextStyle(fontSize: 100),
            //   );
            // }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _con.countNumber,
                  child: Text('Increment'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _con.decreNumber,
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
