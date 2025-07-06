import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  Color? setColor = Colors.white;
  Color? textColor;
  incrementColor(){
    setColor = const Color.fromARGB(255, 1, 121, 219);
    textColor = Colors.white;
  }
  decrementColor(){
    setColor = Colors.black;
    textColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.greenAccent,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 10,left: 20,right: 20),
              alignment: Alignment.center,
              // color: Colors.blueGrey,
              child: Container(
                width: 308,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE7E7E7),
                      offset: Offset(1, 2), // vertical shift
                      blurRadius: 2.0, // smooth blur
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                      child: Text('Welcome to ',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),
                      margin: EdgeInsets.only(top: 3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xDAC5C5C5), // subtle shadow
                            offset: Offset(1, 1), // vertical shift
                            blurRadius: 6.0, // smooth blur
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Text(
                        'ClickCount!',
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 16, 140, 241),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

                // WELCOME PART END
          SizedBox(
            height: 80,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: setColor,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 233, 233, 233),
                  offset: Offset(-28, -28),
                  // spreadRadius: 3.0,
                  blurRadius: 20.0,
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 192, 192, 192),
                  offset: Offset(28, 28),
                  spreadRadius: 1.0,
                  blurRadius: 30.0,
                ),
              ]
            ),
            child: Center(
                child: Text('$counter',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                )
            ),
          ),
          SizedBox(
            height: 80,
          ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: FloatingActionButton.large(
                    onPressed: () {
                      if(counter >0){
                        decrementColor();
                      }
                      setState(() {
                        if(counter > 0){
                          counter--;
                        }
                      });
                    },
                    //
                    // elevation: 0.2,
                    // hoverElevation: 2.0,
                    // backgroundColor: Colors.blue,
                    //
                    // hoverColor: Colors.lightGreenAccent,
                    child: Icon(
                      Icons.minimize,
                      size: 30,
                      weight: 600,
                    ),
                  ),
                ),

                SizedBox(
                  height: 100,
                  width: 100,
                  // color: Colors.red,
                  child: FloatingActionButton.large(
                    onPressed: () {
                      incrementColor();
                      setColor = Colors.blue;
                      setState(() {
                        counter++;
                      });
                    },
                  
                    child: Icon(
                        Icons.add,
                      size: 30,
                      weight: 600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            SizedBox(
              height: 50,
              width: 190,
              child: TextButton(
                onPressed: (){
                  setState(() {
                    counter = 0;
                  });
                },
                style: TextButton.styleFrom(
                  
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 4.0,  
                  ),
                  backgroundColor: Colors.red,
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  
                ),
                child: Text('RESET',),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
