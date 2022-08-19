import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:roadoc/widgets/private_services.dart';
import 'package:roadoc/widgets/road_services.dart';

class HomeScreen extends StatefulWidget {
  @override 
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  // List of top buttons
  List<IconData> _icons = [
    FontAwesomeIcons.ambulance,
    FontAwesomeIcons.carCrash,
    FontAwesomeIcons.carBattery,
    FontAwesomeIcons.hospitalAlt,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector (
      onTap: (){
        setState(() {
          _selectedIndex = index; 
        });
      },
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index 
            ? Theme.of(context).accentColor
            : Color.fromARGB(255, 255, 81, 0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index], 
          size: 25.0,
          color: _selectedIndex == index 
          ? Theme.of(context).primaryColor
          : Color.fromARGB(255, 173, 0, 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(left: 20.0, right: 120.0),
            //   child: Text(
            //     'What would you like to find?',
            //     style: TextStyle(
            //       fontSize: 18.0,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
              SizedBox(height: 3.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons.asMap().entries.map(
                  (MapEntry map)=> _buildIcon(map.key),
                ).toList(),
              ),
            SizedBox(height: 20.0),
            RoadServices(),
            SizedBox(height: 20.0,),
            PrivateServices(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState((){
            _currentTab = value;
          });
        },
        items:[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            label: "Profile"
          ),
        ],
      ),
    );
  }
}