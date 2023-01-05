import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelDetailPage(),
  ));
}

class HotelDetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Container(
          height: 400,
          child: const Image(image: NetworkImage("https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
          fit: BoxFit.cover,
          ),
         ),
         SingleChildScrollView(
          padding: EdgeInsets.only(top: 10,bottom: 10 ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:16.0),
            child: Text(
            "HOTEL MARRIOTT\n Kochi Kerala",
            style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white,fontSize: 29),),),
          Row(
            children: [
            const SizedBox(width: 10,),
             Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: const Text(
                        "1,2345 Reviews",
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      color: Colors.red,
                      icon: const Icon(Icons.favorite,),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.grey.shade300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                                const Text.rich(TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(Icons.location_on, size: 16.0, color: Colors.blueGrey,)
                                  ),
                                  TextSpan(
                                    text: "2 km from Lulu Mall",
                                    style: TextStyle(color: Colors.grey, fontSize: 13.0),
                                     ),
                                   ],
                                 ), 
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: const <Widget>[
                              Text("\$ 500", style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),),
                              Text("/per night",style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            backgroundColor: Colors.red.shade900,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: const Text("Book Now", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                           ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      const Text("DESCRIPTION",
                       style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 14.0),
                        ),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Kochi Marriott Hotel offers new-age hospitality with plush accommodation, stylish décor, and 24-hour room service.\nTreat yourself to lavish buffets and distinctive international and local cuisine at the hotel restaurants. After a busy day, lounge under the warm Kochi sun alongside our shimmering outdoor pool or rejuvenate your mind and body at Quan Spa.\nAddress Lulu International Shopping Mall, 34/1111 N. H. 47,\nEdappally, Kochi 682024 India",
                           textAlign: TextAlign.justify, 
                           style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Hotel Marriott Kochi, Kerala\n\n", textAlign: TextAlign.justify,
                           style: TextStyle(fontSize: 15,),
                       ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text("DETAILS",style: TextStyle(
                fontSize: 18.0,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.lightBlue,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: "Favourites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle_outlined), label: "Profile"),
              ],
            ),
          )
        ],
      ),
    );
  }
}