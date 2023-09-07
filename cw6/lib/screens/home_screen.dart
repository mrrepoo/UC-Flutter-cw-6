import 'package:cw6/models/building.dart';
import 'package:cw6/screens/building_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  var buildings = [
    Building(
        name: 'أبراج الكويت',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        desc: '  تعتبر ابراج الكويت من اهم المعالم السياحيه'),
    Building(
        name: 'برج التحرير',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
        desc: 'يعتبر برج التحرير من ناطحات السحاب وهو جميل جدا'),
    Building(
        name: 'المسجد الكبير',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
        desc: 'يعتبر المسجد الكبير اكبر مسجد في الكويت ويمتلك تصميم جميل'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 30, 112, 153),
          title: Center(child: Text('Kuwait City LandMark')),
        ),
        body: ListView.builder(
            itemCount: buildings.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BuildingScreen(
                                  building: buildings[index],
                                )));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(buildings[index].imgURL),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        child: Text(
                          buildings[index].name,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      Container(child: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
              );
            }));
  }
}