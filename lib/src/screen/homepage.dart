import 'package:exam5/src/screen/secondpage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: AppBar(
              backgroundColor: Colors.black,
              leading: Padding(
                padding: EdgeInsets.only(bottom: 20, left: 15),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.home_outlined,
                    weight: 1,
                    size: 27,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(text: "iPhones          "),
                          TextSpan(text: "Macbooks         "),
                          TextSpan(
                              text: "Watches",
                              style: TextStyle(color: Colors.white))
                        ]),
                  ),
                ),
              ),
              actions: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 25, top: 20),
                    child: Image(
                      image: AssetImage("assets/images/img_1.png"),
                      width: 20,
                      height: 24.61,
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 270, top: 25),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Apple \n",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey
                        )
                      ),
                      TextSpan(
                          text: "Watches ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.black
                          )
                      ),
                    ]

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35, left: 20),
                child: GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SecondPage();
                  })),
                  child: Image(
                    image: AssetImage("assets/images/img.png"),
                    width: 300,
                    height: 170,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Series 3",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 7,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 10,
                        ),
                      ),
                    )
                  ],
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 35, left: 20),
                child: Image(
                  image: AssetImage("assets/images/img_2.png"),
                  width: 300,
                  height: 170,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Series 5",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

            ],
          )
        ],
      ),
    );
  }

}
