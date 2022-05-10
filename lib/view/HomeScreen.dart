import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './customappbar.dart';
import '../models/models.dart';
import '../data/data.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.black,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Container(
                  width: screenSize.width,
                  height: screenSize.height / 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/mainwall.jpeg")),
                  ),
                ),

                ///////////////
                Container(
                  height: 500.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )),
                ),
              ]),
            ),
          ),
          ///////////////////////////
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    child: Text(
                      "افلام",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 165,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: previews.length,
                itemBuilder: (BuildContext context, int index) {
                  final Content content = previews[index];
                  return GestureDetector(
                    onTap: () => print("clicked"),
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(content.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: content.color, width: 4),
                        ),
                      )
                    ]),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    child: Text(
                      "مسلسلات",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 165,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                scrollDirection: Axis.horizontal,
                itemCount: previews.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => print("clicked"),
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        height: 130,
                        width: 130,
                        color: Colors.purple,
                      )
                    ]),
                  );
                },
              ),
            ),
          ),
        ],
        ////////////
      ),
    );
  }
}
