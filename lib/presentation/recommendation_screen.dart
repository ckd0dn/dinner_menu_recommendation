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
  };

  String selectedMenu = '';

   randomMenu() {
    menu.shuffle();
    print(menu);
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
