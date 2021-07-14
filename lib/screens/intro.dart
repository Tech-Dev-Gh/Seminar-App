import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:seminar_app/constants.dart';
import 'package:seminar_app/screens/home.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<Map<dynamic, dynamic>> data = [
    {
      "text": "Find Your Vehicle",
      "subText": "Find the perfect vehicle for every occasion!",
      "imgUrl": "assets/images/intro/intro1.png",
      "buttonText": "Continue",
    },
    {
      "text": "Your dream Car",
      "subText": "Rent the car you’ve always wanted to drive.",
      "imgUrl": "assets/images/intro/intro2.png",
      "buttonText": "Continue",
    },
    {
      "text": "Small Ones Too!",
      "subText": "Rent a small vehicle for those short distances",
      "imgUrl": "assets/images/intro/intro3.png",
      "buttonText": "Continue",
    },
    {
      "text": "Find Our Stations",
      "subText": "Find your nearest station to rent your car!",
      "imgUrl": "assets/images/intro/intro4.png",
      "buttonText": "Get Started",
    }
  ];

  AnimatedContainer buildIndicator({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      height: 7.0,
      width: 25.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? kprimaryColor : ksecondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
          body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 68.0),
            Center(
              child: Text(
                "Beepy",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 64.0),
            Container(
              height: 319,
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemCount: data.length,
                  itemBuilder: (_, index) {
                    return Image.asset(
                      data[index]["imgUrl"]!,
                    );
                  }),
            ),
            SizedBox(height: 32.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  data.length,
                  (index) => buildIndicator(index: index),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0, 32, 35.0, 64.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    data[_currentPage]["text"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    data[_currentPage]["subText"]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 64),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(double.infinity, 57.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: Text(
                      data[_currentPage]["buttonText"]!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
