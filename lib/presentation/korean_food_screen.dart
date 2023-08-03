import 'package:dinner_menu_recommendation/uitls/color.dart';
import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';

class KoreanFoodScreen extends StatefulWidget {
  const KoreanFoodScreen({Key? key}) : super(key: key);

  @override
  State<KoreanFoodScreen> createState() => _KoreanFoodScreenState();
}

class _KoreanFoodScreenState extends State<KoreanFoodScreen> {

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


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // print(screenWidth);

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
