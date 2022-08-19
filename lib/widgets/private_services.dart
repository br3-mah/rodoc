import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/hotel_model.dart';
import '../models/hotel_model.dart';

class PrivateServices extends StatelessWidget {
  // const PrivateServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Find an expert',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.white
                ),
              ),
              // Text(
              //   'See more',
              //   style: TextStyle(
              //     fontSize: 22.0,
              //     fontWeight: FontWeight.w600,
              //     letterSpacing: 1.0,
              //     color: Colors.purple
              //   ),
              // ),
            ],
          ),
        ),
        SizedBox(height: 2.0),
        Container(
          height: 300.0,
          color: Color.fromARGB(255, 253, 0, 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index){
              Hotel hotel = hotels[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 240.0,
                color: Color.fromARGB(255, 255, 0, 0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 15.0,
                      child: Container(
                        height: 100.0,
                        width: 220.0, 
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                hotel.name, 
                                style: TextStyle(
                                  fontSize: 22.0, 
                                  fontWeight: FontWeight.w600, 
                                  letterSpacing: 1.2,
                                ),
                              ),
                              SizedBox(height: 2.0,),
                              Text(
                                hotel.address,
                                style: TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                              SizedBox(height: 2.0,),
                              Text(
                                '\$${hotel.price}/ hour',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 0, 26, 37)
                                ),
                              ),              
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 3.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180.0, 
                          width: 220.0, 
                          image: AssetImage(hotel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}