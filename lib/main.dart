import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Launchpad());
}

class Launchpad extends StatefulWidget {
  const Launchpad({super.key});

  @override
  State<Launchpad> createState() => _LaunchpadState();
}

class _LaunchpadState extends State<Launchpad> {
  final player = AudioPlayer();
Color white = Colors.white;
  List<List<Color>> temp = [
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white]
  ];
  List<List<Color>> temp2 = [
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white]
  ];
  List<List<Color>> padcolors = [
   [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
    [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
    [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
    [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
    [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
    [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
    [Color(0xff067CCB),Color(0xffc40050),Color(0xff067CCB),Color(0xffA23AB7)],
  ];
  List<List<Color>>centercolor= [
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
    [Color(0xffADCBFC), Color(0xffff2525), Color(0xffADCBFC), Color(0xffE247FC)],
  ];


  @override

  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "LAUNCHPAD",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: "caliber",
                  color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[0][0],padcolors[0][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("1.mp3"));
                            temp[0][0] = padcolors[0][0];
                            temp2[0][0] = centercolor[0][0];
                            padcolors[0][0] = white;
                            centercolor[0][0]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[0][0] = temp[0][0];
                            centercolor[0][0]=temp2[0][0];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[0][1],padcolors[0][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("2.mp3"));
                            temp[0][1] = padcolors[0][1];
                            temp2 [0][1]= centercolor[0][1];
                            padcolors[0][1] = white;
                            centercolor[0][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [0][1]= temp[0][1];
                            centercolor[0][1]=temp2[0][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[0][2],padcolors[0][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("3.mp3"));
                            temp[0][2] = padcolors[0][2];
                            temp2[0][2] = centercolor[0][2];
                            padcolors[0][2] = white;
                            centercolor[0][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[0][2] = temp[0][2];
                            centercolor[0][2]=temp2[0][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[0][3],padcolors[0][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("12.mp3"));
                            temp[0][3]= padcolors[0][3];
                            temp2 [0][3]= centercolor[0][3];
                            padcolors [0][3]= white;
                            centercolor[0][3]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[0][3] = temp[0][3];
                            centercolor[0][3]=temp2[0][3];
                          });
                        }),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[1][0],padcolors[1][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("4.mp3"));
                            temp[1][0] = padcolors[1][0];
                            temp2 [1][0]= centercolor[1][0];
                            padcolors[1][0] = white;
                            centercolor[1][0]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [1][0]= temp[1][0];
                            centercolor[1][0]=temp2[1][0];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[1][1],padcolors[1][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("5.mp3"));
                            temp [1][1]= padcolors[1][1];
                            temp2 [1][1]= centercolor[1][1];
                            padcolors [1][1]= white;
                            centercolor[1][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[1][1] = temp[1][1];
                            centercolor[1][1]=temp2[1][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[1][2],padcolors[1][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("6.mp3"));
                            temp [1][2]= padcolors[1][2];
                            temp2[1][2] = centercolor[1][2];
                            padcolors [1][2]= white;
                            centercolor[1][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[1][2] = temp[1][2];
                            centercolor[1][2]=temp2[1][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[1][3],padcolors[1][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("7.mp3"));
                            temp [1][3]= padcolors[1][3];
                            temp2 [1][3]= centercolor[1][3];
                            padcolors[1][3] = white;
                            centercolor[1][3]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[1][3] = temp[1][3];
                            centercolor[1][3]=temp2[1][3];
                          });
                        }),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[2][0],padcolors[2][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("8.mp3"));
                            temp[2][0] = padcolors[2][0];
                            temp2[2][0] = centercolor[2][0];
                            padcolors[2][0] = white;
                            centercolor[2][0]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[2][0] = temp[2][0];
                            centercolor[2][0]=temp2[2][0];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[2][1],padcolors[2][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("9.mp3"));
                            temp [2][1]= padcolors[2][1];
                            temp2 [2][1]= centercolor[2][1];
                            padcolors[2][1] = white;
                            centercolor[2][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [2][1]= temp[2][1];
                            centercolor[2][1]=temp2[2][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[2][2],padcolors[2][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("10.mp3"));
                            temp[2][2] = padcolors[2][2];
                            temp2 [2][2]= centercolor[2][2];
                            padcolors [2][2]= white;
                            centercolor[2][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[2][2] = temp[2][2];
                            centercolor[2][2]=temp2[2][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[2][3],padcolors[2][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("11.mp3"));
                            temp [2][3]= padcolors[2][3];
                            temp2 [2][3]= centercolor[2][3];
                            padcolors[2][3] = white;
                            centercolor[2][3]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[2][3] = temp[2][3];
                            centercolor[2][3]=temp2[2][3];
                          });
                        }),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[3][0],padcolors[3][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("13.mp3"));
                            temp[3][0] = padcolors[3][0];
                            temp2 [3][0]= centercolor[3][0];
                            padcolors [3][0]= white;
                            centercolor[3][0]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [3][0]= temp[3][0];
                            centercolor[3][0]=temp2[3][0];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[3][1],padcolors[3][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("14.mp3"));
                            temp [3][1]= padcolors[3][1];
                            temp2[3][1] = centercolor[3][1];
                            padcolors[3][1] = white;
                            centercolor[3][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[3][1] = temp[3][1];
                            centercolor[3][1]=temp2[3][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[3][2],padcolors[3][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("15.mp3"));
                            temp [3][2]= padcolors[3][2];
                            temp2[3][2] = centercolor[3][2];
                            padcolors [3][2]= white;
                            centercolor[3][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [3][2]= temp[3][2];
                            centercolor[3][2]=temp2[3][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[3][3],padcolors[3][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("16.mp3"));
                            temp [3][3]= padcolors[3][3];
                            temp2 [3][3]= centercolor[3][3];
                            padcolors[3][3] = white;
                            centercolor[3][3]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[3][3] = temp[3][3];
                            centercolor[3][3]=temp2[3][3];
                          });
                        }),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[4][0],padcolors[4][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("17.mp3"));
                            temp[4][0] = padcolors[4][0];
                            temp2 [4][0]= centercolor[4][0];
                            padcolors[4][0] = white;
                            centercolor[4][0]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][0] = temp[4][0];
                            centercolor[4][0]=temp2[4][0];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[4][1],padcolors[4][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("18.mp3"));
                            temp [4][1]= padcolors[4][1];
                            temp2 [4][1]= centercolor[4][1];
                            padcolors [4][1]= white;
                            centercolor[4][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][1] = temp[4][1];
                            centercolor[4][1]=temp2[4][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[4][2],padcolors[4][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("19.mp3"));
                            temp[4][2] = padcolors[4][2];
                            temp2 [4][2]= centercolor[4][2];
                            padcolors[4][2] = white;
                            centercolor[4][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][2] = temp[4][2];
                            centercolor[4][2]=temp2[4][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[4][3],padcolors[4][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("20.wav"));
                            temp [4][3]= padcolors[4][3];
                            temp2[4][3] = centercolor[4][3];
                            padcolors [4][3]= white;
                            centercolor[4][3]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [4][3]= temp[4][3];
                            centercolor[4][3]=temp2[4][3];
                          });
                        }),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[5][0],padcolors[5][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("21.mp3"));
                            temp [5][0]= padcolors[5][0];
                            temp2 [5][0]= centercolor[5][0];
                            padcolors[5][0] = white;
                            centercolor[5][0]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [5][0]= temp[5][0];
                            centercolor[5][0]=temp2[5][0];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[5][1],padcolors[5][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("22.wav"));
                            temp[5][1] = padcolors[5][1];
                            temp2 [5][1]= centercolor[5][1];
                            padcolors [5][1]= white;
                            centercolor[5][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[5][1] = temp[5][1];
                            centercolor[5][1]=temp2[5][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[5][2],padcolors[5][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("23.wav"));
                            temp[5][2] = padcolors[5][2];
                            temp2 [5][2]= centercolor[5][2];
                            padcolors[5][2] = white;
                            centercolor[5][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[5][2] = temp[5][2];
                            centercolor[5][2]=temp2[5][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[5][3],padcolors[5][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("24.wav"));
                            temp[5][3] = padcolors[5][3];
                            temp2[5][3] = centercolor[5][3];
                            padcolors[5][3] = white;
                            centercolor[5][3]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [5][3]= temp[5][3];
                            centercolor[5][3]=temp2[5][3];
                          });
                        }),
                  ),

                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[6][0],padcolors[6][0]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("25.wav"));
                            temp[6][0] = padcolors[6][0] ;
                            temp2[6][0]  = centercolor[6][0] ;
                            padcolors[6][0]  = white;
                            centercolor[6][0] =white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors [6][0] = temp[6][0] ;
                            centercolor[6][0] =temp2[6][0] ;
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[6][1],padcolors[6][1]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("26.wav"));
                            temp [6][1]= padcolors[6][1];
                            temp2[6][1] = centercolor[6][1];
                            padcolors[6][1] = white;
                            centercolor[6][1]=white;
                          });


                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][1] = temp[6][1];
                            centercolor[6][1]=temp2[6][1];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[6][2],padcolors[6][2]],
                          center: Alignment.center,
                          radius: 0.5,

                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("27.wav"));
                            temp [6][2]= padcolors[6][2];
                            temp2[6][2] = centercolor[6][2];
                            padcolors[6][2] = white;
                            centercolor[6][2]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][2] = temp[6][2];
                            centercolor[6][2]=temp2[6][2];
                          });
                        }),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        gradient: RadialGradient(
                          colors: [centercolor[6][3],padcolors[6][3]],
                          center: Alignment.center,
                          radius: 0.5,
                        )
                    ),
                    height:height/7.6,
                    width: width/4,
                    child: MaterialButton(
                      // color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("28.wav"));
                            temp [6][3]= padcolors[6][3];
                            temp2[6][3] = centercolor[6][3];
                            padcolors[6][3] = white;
                            centercolor[6][3]=white;
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][3] = temp[6][3];
                            centercolor[6][3]=temp2[6][3];
                          });
                        }),
                  ),

                ],
              ),


            ],
          )),

    );
  }
}
