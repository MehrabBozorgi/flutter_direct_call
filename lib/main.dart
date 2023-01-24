import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: const Text('Click on Button'),
                leading: CircleWidget(
                  iconData: Icons.call,
                  color: Colors.green,
                  onPress: () {
                    launchUrlString("tel://${09123456789}");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key? key,
    required this.iconData,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  final IconData iconData;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(
          iconData,
          color: Colors.white,
        ),
        color: color,
      ),
    );
  }
}
