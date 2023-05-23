import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The structure of a mobile app (Scaffold)
    return  Scaffold(
      backgroundColor: Colors.yellow,
      appBar:AppBar(title:const Text("Hello World")),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text("Hello World", style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 32, color: Colors.green)),),
                 Text("Welcome to my app", style: GoogleFonts.rubikPuddles(textStyle: const TextStyle(fontSize: 20, color: Colors.blueGrey)),),
                const SizedBox(height: 10,),
                Image.network("https://a.cdn-hotels.com/gdcs/production99/d1417/4da30a77-ecb2-4ead-a771-e61fac2a73dd.jpg?impolicy=fcrop&w=800&h=533&q=medium"),
                const SizedBox(height: 10,),
                const Text("I hope you like it!"),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("This is Left"),
                    SizedBox(width: 10,),
                    Text("This is right")
                  ],
                ),
                const SizedBox(height: 10,),
                TextButton(onPressed: (){
                  Fluttertoast.showToast(
                      msg: "Hello World",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }, child: const Text("Press me!"))
              ],
            ),
          ),
        ),
      )
    );
  }
}
