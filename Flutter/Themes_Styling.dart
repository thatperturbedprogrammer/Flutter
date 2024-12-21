// fit in box of height and width 100

import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Image Example 2'),
                ),
                body: Center(
                    child: Container(
                        width: 100,
                        height: 100,

                        child: Image.asset('assets/images/f3.png'),
                    ),
                ),
            ),
        );
    }
}