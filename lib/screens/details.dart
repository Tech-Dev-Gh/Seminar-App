import 'package:flutter/material.dart';

import 'components/appBar.dart';

class Details extends StatelessWidget {
  const Details(
      {Key? key,
      this.name,
      this.price,
      this.description,
      this.image,
      this.color})
      : super(key: key);

  final String? name;
  final int? price;
  final String? image;
  final Color? color;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(name!),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 37),
          Image.asset(
            image!,
            scale: 0.2,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          Container(
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name!,
                            style: TextStyle(
                              fontSize: 39,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(
                            "assets/images/star.png",
                          ),
                        ],
                      ),
                      Text(
                        "\$$price/day",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 38.0),
                      Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        description!,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 38),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          fixedSize: Size(double.infinity, 57.0),
                          primary: Colors.black,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
