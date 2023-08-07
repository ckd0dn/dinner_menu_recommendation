import 'package:flutter/material.dart';

import '../uitls/color.dart';

class JapaneseFoodScreen extends StatefulWidget {
  const JapaneseFoodScreen({Key? key}) : super(key: key);

  @override
  State<JapaneseFoodScreen> createState() => _JapaneseFoodScreenState();
}

class _JapaneseFoodScreenState extends State<JapaneseFoodScreen> {

  List<String> menu = [
    'assets/images/udon.jpg',
    'assets/images/garaage.jpg',
    'assets/images/odeng.jpg',
    'assets/images/okkonomiyaggi.jpg',
    'assets/images/ramen.jpg',
    'assets/images/raw-fish.jpg',
    'assets/images/shabushabu.jpg',
    'assets/images/soba.jpg',
    'assets/images/sushi.jpg',
    'assets/images/tako.jpg',
  ];

  Map<String, String> menuName = {
    'assets/images/udon.jpg' : '우동',
    'assets/images/garaage.jpg' : '가라아게',
    'assets/images/odeng.jpg' : '오뎅',
    'assets/images/okkonomiyaggi.jpg' : '오꼬노미야끼',
    'assets/images/ramen.jpg' : '라멘',
    'assets/images/raw-fish.jpg' : '회',
    'assets/images/shabushabu.jpg' : '샤브샤브',
    'assets/images/soba.jpg' : '소바',
    'assets/images/sushi.jpg' : '초밥',
    'assets/images/tako.jpg' : '타코야끼',
  };


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: gridWidget(screenWidth)

      ),
    );
  }

  Widget gridWidget(double screenWidth) {
    int crossAxisCount = 5;

    if(screenWidth < 610){
      crossAxisCount = 1;
    }else if(screenWidth < 900){
      crossAxisCount = 2;
    }else if(screenWidth < 1200){
      crossAxisCount = 3;
    }else if(screenWidth < 1480){
      crossAxisCount = 4;
    }

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, // 1개의 행에 항목을 3개씩
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 3/2
      ),
      itemCount: menu.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            margin: const EdgeInsets.only(right: 30),
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(249, 251, 231, 100),
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(menu[index])),
                Text(menuName[menu[index]]!, style: const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
              ],
            )
        );
      },
    );

  }
}
