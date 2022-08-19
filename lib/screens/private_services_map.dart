import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadoc/models/destination_model.dart';

class PrivateServicesMap extends StatefulWidget {
  // const PrivateServicesMap({Key? key}) : super(key: key);
  final Destination destination;
  PrivateServicesMap({Key? key, required this.destination}) : super(key: key);
  
  @override
  State<PrivateServicesMap> createState() => _PrivateServicesMapState();
}

class _PrivateServicesMapState extends State<PrivateServicesMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26, 
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Hero(
              tag: widget.destination.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                  image: AssetImage(widget.destination.imageUrl),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: ()=>Navigator.pop(context),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: ()=>Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.sortAmountDown),
                      iconSize: 25.0,
                      color: Colors.black,
                      onPressed: ()=>Navigator.pop(context),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}