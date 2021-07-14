import 'package:flutter/material.dart';
import 'package:seminar_app/model/vehicles.dart';
import 'package:seminar_app/screens/types.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ElevatedButton buildBox({Color? color, String? text, VoidCallback? press}) {
      return ElevatedButton(
        onPressed: press,

        style: ElevatedButton.styleFrom(
          primary: color,
          fixedSize: Size(130, 130),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        // height: 130,
        // width: 130,
        // alignment: Alignment.center,
        // decoration: BoxDecoration(
        //   color: color,
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBox(
                  color: Color(0xFF8382C2),
                  text: "Cars",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Types(itemName: "Cars", items: getCars)),
                    );
                  }),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBox(
                  color: Color(0xFFB67853),
                  text: "Big Cars",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Types(itemName: "Big Cars", items: getBigCars)),
                    );
                  }),
              buildBox(
                  color: Color(0xFFA34D48),
                  text: "Bikes",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Types(itemName: "Bikes", items: getBikes)),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
