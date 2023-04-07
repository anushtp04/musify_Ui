import 'package:flutter/material.dart';
import 'package:spotify/components/appBar.dart';

import '../components/components.dart';

class PlayListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarTitle: "PlayList"),
      body: Column(
        children: [
          Container (
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.grey[800],
          ),
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                      color: Colors.white
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(
                        color: Colors.white
                    )
                ),
                suffixIcon: Icon(Icons.search,color: Colors.pink[100],),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.pink[100])
            ),
          ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10,right: 10,top: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 160,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 40,
                ) ,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(gridUiImages[index]),
                            fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),

                  );
                },
                itemCount: gridUiImages.length,),
            ),
          ),

        ],
      ),
    );
  }
}
