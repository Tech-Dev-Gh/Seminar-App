import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:seminar_app/constants.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
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
        body: PageView(
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: <Widget>[
            //first page
            page(
              text:"Find Your Vehicle",
              subText:"Find the perfect vehicle for every occasion!",
              imgUrl:"assets/images/intro/intro1.png",
              buttonText: "Continue",
            ),

          //  second page
            page(
              text:"Your dream Car",
              subText:"Rent the car you’ve always wanted to drive.",
              imgUrl:"assets/images/intro/intro2.png",
              buttonText: "Continue",

            ),

            //  third page
            page(
              text:"Small Ones Too!",
              subText:"Rent a small vehicle for those short distances",
              imgUrl:"assets/images/intro/intro3.png",
              buttonText: "Continue",

            ),

            //  fourth page
            page(
              text:"Find Our Stations",
              subText:"Find your nearest station to rent your car!",
              imgUrl:"assets/images/intro/intro4.png",
              buttonText: "Get Started",

            ),
          ],
        ),
      ),
    );
  }

  Widget page({String? text, String? subText, String? imgUrl, String? buttonText}) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 68),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Beepy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 61),
          child: Image.asset(
            imgUrl!,
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
          padding: const EdgeInsets.fromLTRB(64.5, 0, 64.5, 64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  text!,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                subText!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 57,
          margin: EdgeInsets.only(left: 35.0, right: 35.0, bottom: 58.0),
          child: TextButton(
            onPressed: () {

            },
            child: Text(
              buttonText!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
