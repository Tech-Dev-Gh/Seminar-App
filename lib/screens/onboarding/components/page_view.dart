import 'package:flutter/material.dart';

import '../../../constants.dart';

class PageViewComp extends StatefulWidget {
  const PageViewComp({Key? key}) : super(key: key);

  @override
  _PageViewCompState createState() => _PageViewCompState();
}

class _PageViewCompState extends State<PageViewComp> {
  final int _numPages = 3;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      height: 7.0,
      width: 25.0,
      decoration: BoxDecoration(
        color: isActive ? kprimaryColor : ksecondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 68),
            child: Text(
              "Beepy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68),
            child: Image.asset(
              "assets/images/intro/intro1.png",
              height: 319,
              width: 427,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Find Your Vehicle",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 64.0),
            child: Text(
              "Find the perfect vehicle for every occasion!",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextButton(
            // style: ButtonStyle(backgroundColor: kprimaryColor),
            onPressed: () {},
            child: Text("Continue"),
          ),
        ],

    );
  }
}
