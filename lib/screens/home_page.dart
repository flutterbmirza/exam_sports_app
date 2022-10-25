import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [

//search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'City / Stadium',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)
                  ),

                ),
              ),
            ),
            SizedBox(height: 25,),
            // know your team score
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Know Your Favourite team score", style: TextStyle(fontSize: 30
              ),),
            ),


            SizedBox(height: 15,),

            //discount style container

            Container(
              width: 327,
              height: 141,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15)

              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Up to 50% discount", style: TextStyle(fontSize: 20),),
                        SizedBox(height: 15,),
                        Text("Pahlavon Stadium"),
                        SizedBox(height: 10,),
                        Text("Sergeli, Tashkent"),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/img_2.png")
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            //horizontal listview of stadiums

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20,),
                Text("BasketBall", style: TextStyle(color: Colors.grey),),
                SizedBox(width: 10,),
                Text("Ping-Pong", style: TextStyle(color: Colors.grey),),
                SizedBox(width: 10,),
                Text("Football", style: TextStyle(color: Colors.white),),
                SizedBox(width: 10,),
                Text("HorseBack", style: TextStyle(color: Colors.grey),),
                SizedBox(width: 20,),
              ],
            ),

            Container(
              width: 231,
              height: 261,
              decoration: BoxDecoration(
                ),
              child: Column(

              ),
              ),



          ],
        ),
      ),
    );
  }
}



