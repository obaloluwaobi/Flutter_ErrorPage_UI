import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

////////////////// Thanks for checking it out /////////////////////
////////////////// Give me a star if you like it /////////////////////
/// Twitter [KingHubs]
/// Insta [obaobidoyin]
/// Linkedin [Oba Obidoyin]
/// Youtube[KingHubs]
/// Tiktok[KingHubs_]
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ErrorPage(),
    );
  }
}

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Lottie.asset('assets/animation_ln0ucqtx.json'),
          const Text('Oops!',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,

            ),),
          const SizedBox(height: 10,),
          const Text('There is no internet connection',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),),
          const Text('Please check your internet connection',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),),
          const SizedBox(height: 50,),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
                onPressed: (){
                    setState(() {
                      _isLoading = true;

                    });
                    Future.delayed( const Duration(seconds: 3),(){
                      setState(() {
                        _isLoading = false;
                      });
                    });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  side: const BorderSide(color: Colors.black),
                ),
                child:_isLoading? const CircularProgressIndicator() : const Text('Try again',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),)),
          )
        ],
      ),
    );
  }
}


