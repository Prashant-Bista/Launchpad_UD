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
  Color red = Color(0xffc40050);
  Color blue = Color(0xff067CCB);
  Color purple = Color(0xffA23AB7);

  List<List<Color>> temp = [
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white],
    [Colors.white,Colors.white,Colors.white,Colors.white]
  ];
  Color white = Colors.white;
  List<List<Color>> padcolors = [
    [Colors.blue, Colors.purple, Colors.blue, Colors.red],
    [Colors.blue, Colors.purple, Colors.blue, Colors.red],
    [Colors.blue, Colors.purple, Colors.blue, Colors.red],
    [Colors.blue, Colors.purple, Colors.blue, Colors.red],
    [Colors.blue, Colors.purple, Colors.blue, Colors.red],
    [Colors.blue, Colors.purple, Colors.blue, Colors.red],
    [Colors.blue, Colors.purple, Colors.blue, Colors.red]
  ];

  @override
  Widget build(BuildContext context) {
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
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[0][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[0][0] = padcolors[0][0];
                            padcolors[0][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[0][0] = temp[0][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[0][1],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Ride.wav"));
                          temp[0][1] = padcolors[0][1];
                          padcolors[0][1] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[0][1] = temp[0][1];
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[0][2],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Snare.wav"));
                          temp[0][2] = padcolors[0][2];
                          padcolors[0][2] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[0][2] = temp[0][2];
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[0][3],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Tom.wav"));
                          temp[0][3] = padcolors[0][3];
                          padcolors[0][3] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[0][3] = temp[0][3];
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[1][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[1][0] = padcolors[1][0];
                            padcolors[1][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[1][0] = temp[1][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[1][1],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Ride.wav"));
                          temp[1][1] = padcolors[1][1];
                          padcolors[1][1] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[1][1] = temp[1][1];
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[1][2],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Snare.wav"));
                          temp[1][2] = padcolors[1][2];
                          padcolors[1][2] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[1][2] = temp[1][2];
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[1][3],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Tom.wav"));
                          temp[1][3] = padcolors[1][3];
                          padcolors[1][3] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[1][3] = temp[1][3];
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[2][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[2][0] = padcolors[2][0];
                            padcolors[2][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[2][0] = temp[2][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[2][1],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Ride.wav"));
                          temp[2][1] = padcolors[2][1];
                          padcolors[2][1] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[2][1] = temp[2][1];
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[2][2],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Snare.wav"));
                          temp[2][2] = padcolors[2][2];
                          padcolors[2][2] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[2][2] = temp[2][2];
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                      color: padcolors[2][3],
                      onPressed: () async{
                        setState(()  {
                          player.play(AssetSource("Tom.wav"));
                          temp[2][3] = padcolors[2][3];
                          padcolors[2][3] = white;
                        });

                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          padcolors[2][3] = temp[2][3];
                        });
                      },
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[3][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[3][0] = padcolors[3][0];
                            padcolors[3][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[3][0] = temp[3][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[3][1],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[3][1] = padcolors[3][1];
                            padcolors[3][1] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[3][1] = temp[3][1];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[3][2],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[3][2] = padcolors[3][2];
                            padcolors[3][2] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[3][2] = temp[3][2];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[3][3],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[3][3] = padcolors[3][3];
                            padcolors[3][3] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[3][3] = temp[3][3];
                          });
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[4][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[4][0] = padcolors[4][0];
                            padcolors[4][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][0] = temp[4][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[4][1],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Ride.wav"));
                            temp[4][1] = padcolors[4][1];
                            padcolors[4][1] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][1] = temp[4][1];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[4][2],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Snare.wav"));
                            temp[4][2] = padcolors[4][2];
                            padcolors[4][2] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][2] = temp[4][2];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[4][3],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Tom.wav"));
                            temp[4][3] = padcolors[4][3];
                            padcolors[4][3] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[4][3] = temp[4][3];
                          });
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[5][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[5][0] = padcolors[5][0];
                            padcolors[5][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[5][0] = temp[5][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[5][1],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Ride.wav"));
                            temp[5][1]= padcolors[5][1];
                            padcolors[5][1] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[5][1] = temp[5][1];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[5][2],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Snare.wav"));
                            temp[5][2]= padcolors[5][2];
                            padcolors[5][2] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[5][2] = temp[5][2];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[5][3],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Tom.wav"));
                            temp[5][3]= padcolors[5][3];
                            padcolors[5][3] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[5][3] = temp[5][3];
                          });
                        }),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[6][0],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Kick.wav"));
                            temp[6][0] = padcolors[6][0];
                            padcolors[6][0] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][0] = temp[6][0];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[6][1],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Ride.wav"));
                            temp[6][1] = padcolors[6][1];
                            padcolors[6][1] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][1] = temp[6][1];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[6][2],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Snare.wav"));
                            temp[6][2] = padcolors[6][2];
                            padcolors[6][2] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][2] = temp[6][2];
                          });
                        }),
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    child: MaterialButton(
                        color: padcolors[6][3],
                        onPressed: () async {
                          setState(() {
                            player.play(AssetSource("Tom.wav"));
                            temp[6][3] = padcolors[6][3];
                            padcolors[6][3] = white;
                          });

                          await Future.delayed(const Duration(milliseconds: 300));
                          setState(() {
                            padcolors[6][3] = temp[6][3];
                          });
                        }),
                  )
                ],
              ),

            ],
          )),

    );
  }
}
