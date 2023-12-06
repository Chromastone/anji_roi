import 'package:anji_roi/widgets/imageTile.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> navList = ["Collections", "About", "Projects"];
  @override
  void initState() {
    //getSizeOfImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: Text(
              widget.title,
              style: const TextStyle(color: Colors.black),
            ),
            actions: [
              TextButton(
                onPressed: null,
                child: Text(
                  navList[0],
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  navList[1],
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text(
                  navList[2],
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(40),
            child: GridView.custom(
              gridDelegate: SliverStairedGridDelegate(
                crossAxisSpacing: 150,
                mainAxisSpacing: 75,
                startCrossAxisDirectionReversed: true,
                //tileBottomSpace: 1000,
                pattern: [
                  StairedGridTile(0.5, 1),
                  StairedGridTile(0.5, 3 / 4),
                  StairedGridTile(1.0, 10 / 4),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => imageTile(imagePath: "home_$index.jpg"),
              ),
            ),
          )),
    );
  }
}
