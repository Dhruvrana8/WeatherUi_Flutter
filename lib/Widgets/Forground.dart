import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x_second_project/Locations.dart';

class Forground extends StatelessWidget {
  var inputBorder = OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    );
  final locations = [
    Locations(
      text: 'New York',
      timing: '10:44 am',
      temperature: 15,
      weather: 'Cloudy',
      imageUrl: 'https://i.ibb.co/df35Y8Q/2.png',
    ),
    Locations(
      text: 'San Francisco',
      timing: '7:44 am',
      temperature: 6,
      weather: 'Raining',
      imageUrl: 'https://i.ibb.co/7WyTr6q/3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: [
          IconButton(
              icon: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/Z1fYsws/profile-image.jpg"
                ),
                backgroundColor: Colors.black26,
              ),
              onPressed: (){}
              )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: DefaultTextStyle(
          style: GoogleFonts.raleway(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.heightBox,
              "Hello City".text.size(30.0).make(),
              5.heightBox,
              "Check The Weather by the city".text.size(15).bold.make(),
              35.heightBox,
              TextField(
                decoration: InputDecoration(
                  border: inputBorder,
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  hintText: "Search City",
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                  ),
                  suffixIcon: Icon(Icons.search,color: Colors.white,)
                ),
              ),
              150.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "My Location".text.size(22).bold.make(),
                  OutlinedButton(
                      child: Icon(Icons.more_horiz),
                      style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                        side: BorderSide(width: 1,color: Vx.white),
                        shape: CircleBorder()
                      ),
                      onPressed: (){},
                  )
                ],
              ),
              30.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for(var location in locations)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        alignment: Alignment.center,
                          children: [
                       ColorFiltered(
                         colorFilter: ColorFilter.mode(
                           Colors.black45,
                           BlendMode.darken
                         ),
                           child: Image.network(
                             location.imageUrl,height: height*0.34,
                           )),
                            Column(
                              children: [
                                "${location.text}".text.size(19).semiBold.white.make(),
                                "${location.timing}".text.make(),
                                40.heightBox,
                                Text(location.temperature.toString()+ "°").text.size(40).semiBold.make(),
                                50.heightBox,
                                "${location.weather}".text.size(20).bold.make(),
                              ],
                            )
                      ]),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}