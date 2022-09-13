

import 'package:figma_design/signup_for_student.dart';
import 'package:figma_design/models/slide.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'pages/logged_in_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 48, right: 48),
                height: 447,
                width: 327,
                child: PageView.builder(
                    itemCount: slideList.length,
                    controller: _pageController,
                    itemBuilder: (context, index) {
                      return carouselSlide(slideList[index], context);
                    }),
              ),
              SizedBox(height: 50),
              SmoothPageIndicator(
                controller: _pageController,
                count: slideList.length,
                effect: WormEffect(
                  type: WormType.thin,
                  spacing: 8,
                  dotWidth: 10,
                  dotHeight: 10,
                  activeDotColor: Color(0xFF2D9CDB),
                  dotColor: Color(0xFFE0E0E0),
                ),
              ),
            ],
          ),
          SizedBox(height: 67),
          ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100))),
                backgroundColor: MaterialStateProperty.all(Color(0xFF2D9CDB)),
                fixedSize: MaterialStateProperty.all(
                  Size(327, 51),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'Увійти як студент',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontFamily: 'Rubik',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartPage()));
              },
              child: Text(
                'Гостьовий перегляд',
                style: TextStyle(
                  color: Color(0xFF2D9CDB),
                  fontFamily: 'Rubik',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ))
        ],
      ),
    );
  }
}

Widget carouselSlide(SlideModel item, BuildContext context) {
  return Column(
    children: [
      Container(
        height: 327,
        width: 327,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                item.imageUrl,
              ),
              fit: BoxFit.cover),
        ),
      ),
      Text(
        item.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline1,
      ),
      SizedBox(
        height: 18,
      ),
      Flexible(
        child: Text(
          item.description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xFF828282),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}
