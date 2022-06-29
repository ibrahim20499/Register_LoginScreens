import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_loginscreens/Screens/registerPage.dart';
import '../Components/my_text.dart';
import '../Components/page_view.dart';
import '../Model/appbanner.dart';
import '../Components/indicator.dart';
import 'login_page.dart';
import '../Components/my_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.,
            children: [
          Padding(
            padding: const EdgeInsets.only(top: 55.0, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 102.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: MaterialButton(
                    height: 62.0,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    color: Color(0xffFBEEF2),
                  ),
                ),
              ],
            ),
          ),
          Container(
              //color: Colors.white,
              height: MediaQuery.of(context).size.height * .66,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          onPageChanged: _onPageChanged,
                          itemCount: appbannarList.length,
                          itemBuilder: (context, index) => PagView(index),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 30),
                              child: Row(
                                //mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  for (int i = 0; i < appbannarList.length; i++)
                                    if (i == _currentPage)
                                      Indicator(true)
                                    else
                                      Indicator(false)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: MyButton(
              text: 'Get Started',
              height: 75.0,
              radius: 12,
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              buttonColor: const Color(0xff00A1AC),
              textColor: Colors.white,
              fontsize: 20,
            ),
          ),
          const SizedBox(
            height: 35.0,
          ),
          GuidlinesText(
            text: "Don't Have an account?",
            textButton: 'Sign up',
            textColor: Colors.black,
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterPage(),
                ),
              );
            }, textButtonColor: const Color(0xff00A1AC),
          ),
        ]));
  }
}
