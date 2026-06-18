import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_ic_call_outlined),
        backgroundColor: Colors.green,
        title: Text('News'),
        centerTitle: true,
        actions: [
          Icon(Icons.add_ic_call_outlined),
          Icon(Icons.add_ic_call_outlined),
          Icon(Icons.add_ic_call_outlined),
        ],
      ),
      body: Center(child: Image.asset('assets/splash.png', width: 100)),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),

      body: Column(
        children: [
          Row(children: [Text('sa')]),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                CustomCategory(colors: Colors.amber, title: 'news'),

                CustomCategory(colors: Colors.red, title: 'dasasd'),
                CustomCategory(colors: Colors.amber, title: 'news'),

                CustomCategory(colors: Colors.red, title: 'dasasd'),
                CustomCategory(colors: Colors.amber, title: 'news'),

                CustomCategory(colors: Colors.red, title: 'dasasd'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCategory extends StatelessWidget {
  final Color colors;
  final String title;

  const CustomCategory({super.key, required this.colors, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [Image.asset('assets/splash.png', width: 100), Text(title)],
      ),
    );
  }
}
