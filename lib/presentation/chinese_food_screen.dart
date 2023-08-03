import 'package:flutter/material.dart';

import '../uitls/color.dart';

class ChineseFoodScreen extends StatefulWidget {
  const ChineseFoodScreen({Key? key}) : super(key: key);

  @override
  State<ChineseFoodScreen> createState() => _ChineseFoodScreenState();
}

class _ChineseFoodScreenState extends State<ChineseFoodScreen> {
  List<String> menu = [
    'assets/images/black_noodle.jpg',
    'assets/images/champon.jpg',
    'assets/images/gganpungi.jpg',
    'assets/images/grilled_rice.jpg',
    'assets/images/Guobaorou.jpg',
    'assets/images/Lamb_skewers.jpg',
    'assets/images/Malatang.png',
    'assets/images/palbocha.jpg',
    'assets/images/tangsuyouk.jpg',
    'assets/images/udon.jpg',
    'assets/images/yangjangpi.jpg',
    'assets/images/yousansle.jpg',
  ];

  Map<String, String> menuName = {
    'assets/images/black_noodle.jpg' : '짜장면',
    'assets/images/champon.jpg' : '짬뽕',
    'assets/images/gganpungi.jpg' : '깐풍기',
    'assets/images/grilled_rice.jpg' : '볶음밥',
    'assets/images/Guobaorou.jpg' : '꿔바로우',
    'assets/images/Lamb_skewers.jpg' : '양꼬치',
    'assets/images/Malatang.png' : '마라탕',
    'assets/images/palbocha.jpg' : '팔보채',
    'assets/images/tangsuyouk.jpg' : '탕수육',
    'assets/images/udon.jpg' : '우동',
    'assets/images/yangjangpi.jpg' : '양장피',
    'assets/images/yousansle.jpg' : '유산슬',
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
