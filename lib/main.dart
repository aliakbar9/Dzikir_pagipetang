import 'package:flutter/material.dart';

import 'dzikirpagi.dart';
import 'dzikirpetang.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var tekswaktudoa = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 23.0,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Dzikir",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            Text(
              "Pagi dan Petang",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, dzikirPagi());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 30.0),
                height: 200.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fmarshallshepherd%2Ffiles%2F2017%2F05%2F18698369_10212844348565183_8072570633462979037_n.jpg"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Pagi",
                        style: tekswaktudoa,
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, dzikirpetang());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 30.0),
                height: 200.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://c.tadst.com/gfx/750x500/barcelona-morning-sky.jpg?1"),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Petang",
                        style: tekswaktudoa,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.luminosity),
            image: NetworkImage(imageUrl)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
