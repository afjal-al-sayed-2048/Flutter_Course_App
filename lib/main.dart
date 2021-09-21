import 'package:flutter/material.dart';

import 'components/CourseCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory,
        splashColor: Color.fromRGBO(200, 200, 200, 0.25)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){  },
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Beginners Course",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Chapters completed: 2/31",
                          style: TextStyle(
                            fontSize: 16.0,
                            height: 1.6
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton.icon(
                          onPressed: () {  },
                          icon: Icon(Icons.play_arrow),
                          label: Text("Continue chapter 3"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      "All Chapters",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  CourseCard(
                    image: "assets/images/flutter_banner_1.png",
                    title: "Flutter: Getting Started",
                    description: "Learn what is Flutter, why Flutter, Flutter architecutre...",
                  ),
                  CourseCard(
                    image: "assets/images/flutter_banner_3.jpg",
                    title: "Flutter Environment Setup",
                    description: "Install Flutter SDK in Windows and MacOS",
                  ),
                  CourseCard(
                    image: "assets/images/flutter_banner_2.jpg",
                    title: "Flutter Widgets",
                    description: "Explorer the world of Widgets and Classes in Flutter",
                  ),
                  Center(
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                          "Show more",
                        style: TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ),
                  )
                ]
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}


