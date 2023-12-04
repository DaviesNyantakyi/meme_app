import 'package:flutter/material.dart';

// Where the probrag exectuion starts
String imageURL1 =
    'https://wegotthiscovered.com/wp-content/uploads/2023/10/handsome-squidward.png?w=1200';
String imageURL2 =
    'https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExNG5vYW04dmxrdWsza3Q0NHd4YzR0MWZvNW9jMHRqdWI2bGpjdGppOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/R6gvnAxj2ISzJdbA63/giphy-downsized-large.gif';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _title(),
                const SizedBox(height: 32),
                _image(imageURL: imageURL1),
                const SizedBox(height: 16),
                _image(imageURL: imageURL2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _appBar() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'MEME APP',
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.blueGrey,
  );
}

Widget _title() {
  return Text(
    'Let\'s get it'.toUpperCase(),
    style: const TextStyle(
      fontSize: 32,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _image({required String imageURL}) {
  return Container(
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(imageURL),
        fit: BoxFit.cover,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
}
