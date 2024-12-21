import 'package:flutter/material/dart';
void main(){
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: 'My Application',
            debugShowCheckedModeBanner: true,
            home: Scaffold(
                body: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: mainAxisAlignment.center,
                        children: [
                            Row(
                                mainAxisAlignment: mainAxisAlignment.spaceEvenly,
                                children: [
                                    Container(height: 100, width: 100, color: Colors.teal, 
                                    child: const Text('inside container1', style: TextStyle(fontSize: 20))),

                                    Container(height: 100, width: 100, color: Colors.teal[600], 
                                    child: const Text('inside container2', style: TextStyle(fontSize: 20))),

                                    Container(height: 100, width: 100, color: Colors.teal[900], 
                                    child: const Text('inside container3', style: TextStyle(fontSize: 20))),
                                ],
                            ),

                            Row(
                                mainAxisAlignment: mainAxisAlignment.spaceEvenly,
                                children: [
                                    Container(height: 100, width: 100, color: Colors.amberAccent,),
                                    Container(height: 100, width: 100, color: Colors.amberAccent[100],),
                                    Container(height: 100, width: 100, color: Colors.amberAccent[200],),
                                ],
                            )
                        ],
                    )
                )
            )
        );
    }
}