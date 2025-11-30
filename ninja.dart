import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the debug banner
      home: const NinjaCard(),
    );
  }
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/batman.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(height: 60.0, color: Colors.grey),
            const Text(
              'NAME',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'CUNLI',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: const <Widget>[
                Icon(Icons.email, color: Colors.black38),
                SizedBox(width: 10.0),
                Text(
                  'goat.barteaumail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1; // increases ninja level when button is pressed
          });
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
    );
  }
}
