import 'package:exam5/src/screen/homepage.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
              return  HomeScreen();
            })),
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
          actions: [
            SizedBox(
              width: 50,
              height:50,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.label_important_outline_sharp, //manda heart iconi chiqmadi
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35,),
              child: GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SecondPage();
                })),
                child: Image(
                  image: AssetImage("assets/images/img.png"),
                  width: 500,
                  height: 250,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  SizedBox(
                    width: 45,
                    height: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  for(int i = 0; i < 3; i++)
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                        width: 10,
                        height: 10,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text(
                "Series 3",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "The Apple watch series 3 is designed\nfor people who want to keep their\nfitness game on point.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",

                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Row(
                  children: [
                    Text(
                      r"$295.00     ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                )
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 400,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    "PROCEED TO BUY",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 2, right: 20, left: 20),
              child: Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1)
                ),
                child: const Center(
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
