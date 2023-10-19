import 'package:flutter/material.dart';
import 'package:video_calling_using_zegocloud_in_flutter/call_page.dart';
import 'dart:math' as math;

final String localUserID = math.Random().nextInt(10000).toString();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Calling App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final callIdTextCtrl = TextEditingController(text: 'call_id');

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Calling App', style: Theme.of(context).textTheme.titleMedium),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: callIdTextCtrl,
                    decoration:
                        const InputDecoration(labelText: 'Join by Call Id'),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CallPage(
                        localUserId: localUserID,
                        id: callIdTextCtrl.text.toString().trim())));
                    },
                    child: const Text('Join'))
              ],
            )),
      ),
    );
  }
}
