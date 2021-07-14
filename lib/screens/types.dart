import 'package:flutter/material.dart';
import 'package:seminar_app/model/vehicles.dart';

import 'details.dart';
import 'components/appBar.dart';

class Types extends StatelessWidget {
  const Types({Key? key, this.items, this.itemName}) : super(key: key);

  final String? itemName;
  final List<Vehicle>? items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(itemName!),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: ListView.builder(
            itemCount: items!.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Details(
                              name: items![index].name,
                              price: items![index].price,
                              image: items![index].url,
                              description: items![index].description,
                              color: items![index].cardColor,
                            )),
                  );
                },
                child: Container(
                    width: 306.0,
                    height: 143.5,
                    margin: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                        color: items![index].cardColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Text(
                            items![index].name.toString(),
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Positioned(
                            top: 40.0,
                            child: Text(
                              "\$${items![index].price}/day",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 80.0,
                            child: Image.asset("assets/images/star.png"),
                          ),
                          Positioned(
                            top: 28.0,
                            left: MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? 400.0
                                : 106.0,
                            child: Image.asset("${items![index].url}"),
                          )
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }
}
