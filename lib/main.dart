import 'package:flutter/material.dart';
import 'data.dart';
import 'detail.dart';
import 'home.dart';
import 'splash.dart';
import 'beli.dart';
import 'login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Buku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        platform: TargetPlatform.iOS,
      ),
      home: SplashScreen(),
      onGenerateRoute: (settings) => generateRoute(settings),
      routes: <String, WidgetBuilder>{
        //ini berfungsi untuk menambah route pindah halaman, kalau ada halaman baru tammbahkan di sini
      '/home': (BuildContext context) => new Home(),
      '/splash': (BuildContext context) => new SplashScreen(),
      '/beli': (BuildContext context) => new BeliBuku(),
      '/login': (BuildContext context) => new Login(),
    }
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book), 
      //builder: (context) => Detail(book),
    );
  }
}