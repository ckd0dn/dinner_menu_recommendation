import 'package:flutter/material.dart';

import '../uitls/color.dart';

class WesternfoodScreen extends StatefulWidget {
  const WesternfoodScreen({Key? key}) : super(key: key);

  @override
  State<WesternfoodScreen> createState() => _WesternfoodScreenState();
}

class _WesternfoodScreenState extends State<WesternfoodScreen> {

  List<String> menu = [
    'assets/images/barbecue.jpg',
    'assets/images/hamburger.jpg',
    'assets/images/hot-dog.jpg',
    'assets/images/pasta.jpg',
    'assets/images/pizza.jpg',
    'assets/images/rice.jpg',
    'assets/images/salad.jpg',
    'assets/images/sandwich.jpg',
    'assets/images/steak.jpg',
    'assets/images/toast.jpg',
  ];

  Map<String, String> menuName = {
    'assets/images/barbecue.jpg' : '바베큐',
    'assets/images/hamburger.jpg' : '햄버거',
    'assets/images/hot-dog.jpg' : '핫도그',
    'assets/images/pasta.jpg' : '파스타',
    'assets/images/pizza.jpg' : '피자',
    'assets/images/rice.jpg' : '리조또',
    'assets/images/salad.jpg' : '샐러드',
    'assets/images/sandwich.jpg' : '샌드위치',
    'assets/images/steak.jpg' : '스테이크',
    'assets/images/toast.jpg' : '토스트',
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
