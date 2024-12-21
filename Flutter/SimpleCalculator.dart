import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            home: MyHomePage(),
        );
    }
}

class MyHomePage extends StatefulWidget{
    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
    var num1Controller = TextEditingController();
    var num2Controller = TextEditingController();

    int result = 0;

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Addition App'),
            ),

            body: Container(
                color: Colors.white,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            TextField(
                                controller: num1Controller,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Enter Number 1',
                                ),
                            ),

                            SizedBox(height: 20.0),

                            TextField(
                                controller: num2Controller,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Enter Number 2',
                                ),
                            ),

                            SizedBox(height: 20.0),

                            ElevatedButton(onPressed: (){
                                setState((){
                                    var num1 = int.parse(num1Controller.text.toString());
                                    var num2 = int.parse(num2Controller.text.toString());
                                    result = num1 + num2;
                                });
                            },
                            child: Text('Add'),
                            ),
                        ],
                    ),
                ),
            ),
        ); // Scaffold
    }
}