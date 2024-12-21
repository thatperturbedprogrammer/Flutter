import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
    runApp(MaterialApp(
        home: MyApp(),
    ));     // MaterialApp
}

class MyApp extends StatefulWidget{
    const MyApp({Key?key}) : super(key);

    @override
    State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
    // controller
    late final AnimationController _controller;

    @override
    void initState(){
        super.initState();
        _controller = AnimationController(duration: Duration(seconds: 10), vsync: this);
    }

    @override
    void dispose(){
        super.dispose();
        _controller.dispose();
    }

    bool bookmark = false;
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: GestureDetector(
                    onTap: (){
                        if(bookmark == false){
                            bookmark = true;
                            _controller.forward();
                        }
                        else {
                            bookmark = false;
                            _controller.reverse();
                        }
                    },  // onTap
                ),   // GestureDetector
            ), // Center
        );  // Scaffold
    }
}