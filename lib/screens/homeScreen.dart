import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/appBar.dart';
import '../components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbarTitle: 'Musify.',
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              height: 30,
              width: double.infinity,
              child: Text(
                "Suggested Playlists",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CarouselSlider(
                items: List.generate(
                    gridUiImages.length,
                    (index) => Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(gridUiImages[index]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20)),
                        )),
                options: CarouselOptions(
                  height: 220,
                  viewportFraction: 0.7,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Text(
                "Recommended for you",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: listUiImages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(listUiImages[index]),
                          fit: BoxFit.fill),
                    ),
                  ),
                  title: Text(listTitle[index], style: TextStyle(fontSize: 18)),
                  subtitle: Text(listSubTitle[index],
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  trailing: Wrap(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_outlined),color: Colors.pink[100]),
                      IconButton(onPressed: (){}, icon: Icon(Icons.download),color: Colors.pink[100],)
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
