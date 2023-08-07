import 'package:flutter/material.dart';

import '../uitls/color.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({Key? key}) : super(key: key);

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  List<String> menu = [
    'assets/images/bibimbap.jpg',
    'assets/images/bollgogi.jpg',
    'assets/images/cheonggukjang.jpg',
    'assets/images/chop-suey.jpg',
    'assets/images/cold-noodles.png',
    'assets/images/galbijjim.jpg',
    'assets/images/kimchi-stew.jpg',
    'assets/images/pork-belly.jpg',
    'assets/images/rice-roll.jpg',
    'assets/images/soy-bean-paste-soup.jpg',
    'assets/images/tteokbokki.jpg',
    'assets/images/sundae.jpg',
    'assets/images/yukgaejang.jpg',
    'assets/images/boochimgae.jpg',
    'assets/images/seolleongtang.jpg',
    'assets/images/pig_hocks.jpg',
    'assets/images/bossam.jpg',
    'assets/images/chicken.jpg',

    'assets/images/black_noodle.jpg',
    'assets/images/champon.jpg',
    'assets/images/gganpungi.jpg',
    'assets/images/grilled_rice.jpg',
    'assets/images/Guobaorou.jpg',
    'assets/images/Lamb_skewers.jpg',
    'assets/images/Malatang.png',
    'assets/images/palbocha.jpg',
    'assets/images/tangsuyouk.jpg',
    'assets/images/yangjangpi.jpg',
    'assets/images/yousansle.jpg',

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

    'assets/images/vetnam-noodle.jpg',
    'assets/images/kare.jpg',
  ];

  Map<String, String> menuName = {
    'assets/images/bibimbap.jpg' : '비빔밥',
    'assets/images/bollgogi.jpg' : '불고기',
    'assets/images/cheonggukjang.jpg' : '청국장',
    'assets/images/chop-suey.jpg' : '잡채',
    'assets/images/cold-noodles.png' : '냉면',
    'assets/images/galbijjim.jpg' : '갈비찜',
    'assets/images/kimchi-stew.jpg' : '김치찌개',
    'assets/images/pork-belly.jpg' : '돼지고기',
    'assets/images/rice-roll.jpg' : '김밥',
    'assets/images/soy-bean-paste-soup.jpg' : '된장찌개',
    'assets/images/tteokbokki.jpg' : '떡볶이',
    'assets/images/sundae.jpg' : '순대',
    'assets/images/yukgaejang.jpg' : '육개장',
    'assets/images/boochimgae.jpg' : '부침개',
    'assets/images/seolleongtang.jpg' : '설렁탕',
    'assets/images/pig_hocks.jpg' : '족발',
    'assets/images/bossam.jpg' : '보쌈',
    'assets/images/chicken.jpg' : '치킨',

    'assets/images/black_noodle.jpg' : '짜장면',
    'assets/images/champon.jpg' : '짬뽕',
    'assets/images/gganpungi.jpg' : '깐풍기',
    'assets/images/grilled_rice.jpg' : '볶음밥',
    'assets/images/Guobaorou.jpg' : '꿔바로우',
    'assets/images/Lamb_skewers.jpg' : '양꼬치',
    'assets/images/Malatang.png' : '마라탕',
    'assets/images/palbocha.jpg' : '팔보채',
    'assets/images/tangsuyouk.jpg' : '탕수육',
    'assets/images/yangjangpi.jpg' : '양장피',
    'assets/images/yousansle.jpg' : '유산슬',

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

    'assets/images/vetnam-noodle.jpg' : '베트남',
    'assets/images/kare.jpg' : '카레',
  };

  String selectedMenu = '';

   randomMenu() {
    menu.shuffle();

    selectedMenu = menu.first;
  }

  @override
  void initState() {

    randomMenu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(249, 251, 231, 100),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 400,
                          height: 400,
                          child: Image.asset(selectedMenu)),
                      Text(menuName[selectedMenu]!, style: const TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                    ],
                  )
              ),
              const SizedBox(height: 60,),
              SizedBox(
                width: 500,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  onPressed: (){
                      setState(() {
                        randomMenu();
                      });
                  }, child: const Text("다시 추천받기", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),),
              )
            ],
          ),
        ),
      )

    );
  }
}
