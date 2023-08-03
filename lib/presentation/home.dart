import 'package:dinner_menu_recommendation/presentation/chinese_food_screen.dart';
import 'package:dinner_menu_recommendation/presentation/korean_food_screen.dart';
import 'package:dinner_menu_recommendation/presentation/recommendation_screen.dart';
import 'package:dinner_menu_recommendation/presentation/western_food_screen.dart';
import 'package:dinner_menu_recommendation/uitls/color.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("저 ", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                  AnimatedTextKit(
                    pause: const Duration(milliseconds: 2000),
                    totalRepeatCount: 3,
                    animatedTexts: [
                      FadeAnimatedText('녁 ', textStyle: const TextStyle(fontSize: 24, color: Colors.teal, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Text("메 ", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                  AnimatedTextKit(
                    pause: const Duration(milliseconds: 2000),
                    totalRepeatCount: 3,
                    animatedTexts: [
                      FadeAnimatedText('뉴 ', textStyle: const TextStyle(fontSize: 24, color: Colors.teal, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Text("추 ", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                  AnimatedTextKit(
                    pause: const Duration(milliseconds: 2000),
                    totalRepeatCount: 3,
                    animatedTexts: [
                      FadeAnimatedText('천 ', textStyle: const TextStyle(fontSize: 24, color: Colors.teal, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const KoreanFoodScreen()));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(right: 30),
                      alignment: Alignment.center,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(249, 251, 231, 100),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/bibimbap.png')),
                          const Text("한식", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                      )
                  ),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const WesternfoodScreen()));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(right: 30),
                      alignment: Alignment.center,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(249, 251, 231, 100),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/pizza.png')),
                          const Text("양식", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                      )
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChineseFoodScreen()));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(right: 30),
                      alignment: Alignment.center,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(249, 251, 231, 100),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset('assets/images/black-noodles.png')),
                          const Text("중식", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                        ],
                      )
                  ),
                ),

                Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(249, 251, 231, 100),
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset('assets/images/sushi.png')),
                        const Text("일식", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                      ],
                    )
                ),

              ],
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RecommendationScreen()));
              }, child: const Text("저녁메뉴 추천받기", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),),
            )

          ],
        ),
      ),
    );
  }
}
