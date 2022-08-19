import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'pages/login_page.dart';
import 'pages/splash_screen.dart';

void main() => runApp(MyApp());

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(LoginUiApp());
// }

class MyApp extends StatelessWidget {
  // WidgetsFlutterBinding.ensureInitialized();
  // // ignore: unused_element
  // await Firebase._Firebase();

  Color _primaryColor = HexColor('#FE5454');
  Color _accentColor = HexColor('#AE0202');

  // Design color
  // Color _primaryColor= HexColor('#FFC867');
  // Color _accentColor= HexColor('#FF3CBD');

  // Our Logo Color
  // Color _primaryColor= HexColor('#D44CF6');
  // Color _accentColor= HexColor('#5E18C8');

  // Our Logo Blue Color
  //Color _primaryColor= HexColor('#651BD2');
  //Color _accentColor= HexColor('#320181');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roadoc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        // accentColor: Color.fromARGB(255, 235, 209, 194),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 0, 0),
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: 'Roadoc'),
      // home: const LoginPage(),
    );
  }
}
