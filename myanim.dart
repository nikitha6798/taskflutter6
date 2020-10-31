import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;
  var MyImage=Image.network("https://pbs.twimg.com/profile_images/1270635467851980800/yqmj-zkM_400x400.jpg",
  width: 200,
  height: 200,);
  

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 15 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.5);
            print("clicked ..");
          },
          child: Column(
            children: <Widget>[
              Container(
                width: 200 * animation.value + 50,
                height: 200 * animation.value + 50,
                color: Color.fromRGBO(255, 25, 100, 10),
                child: Center(
                  child: MyImage,
                  // child: Text(
                  //   'Hello LW',
                  //   style: TextStyle(
                  // fontSize: 24.0 * animation.value,
                  //   ),
                  // ),
                ),
              ),

              SizedBox(height:40),

              Container(
                color: Colors.lightBlue.shade300,
                width: 250,
                height: 150, 
                child: Text("WELCOME TO  FLUTTER ANIMATION....  ",
          
                style: TextStyle(
                  fontSize: 25.0 * animation.value
                    ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
