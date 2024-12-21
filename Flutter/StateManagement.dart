import 'package:flutter/material.dart';

void main(){
    runApp(MaterialApp(
        home: MyApp(),
    ));

}

class MyApp extends StatelessWidget{
    const MyApp({Key?key}) : super(key:key);

    @override
    Widget build(BuildContext context){
        TextEditingController name = TextEditingController();
        TextEditingController id = TextEditingController();
        TextEditingController semester = TextEditingController();
        TextEditingController dept = TextEditingController();
        TextEditingController city = TextEditingController();

        return Scaffold(
            appBar: AppBar(
                title: Text("User Info"),
                centerText: true,
            ),

            body: Column(
                children: [
                    SizedBox(height: 10),
                    TextField(controller: name, decoration: InputDecoration(labelText: 'Enter your name',),),

                    SizedBox(height: 10),
                    TextField(controller: id, decoration: InputDecoration(labelText: 'Enter your id',),),

                    SizedBox(height: 10),
                    TextField(controller: semester, decoration: InputDecoration(labelText: 'Enter your semester', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),),),

                    SizedBox(height: 10),
                    TextField(controller: dept, decoration: InputDecoration(labelText: 'Enter your department', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),),),

                    SizedBox(height: 10),
                    TextField(controller: city, decoration: InputDecoration(labelText: 'Enter your city', border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),),),

                    SizedBox(height: 10,),

                    ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen(
                            name: name.text,
                            id: id.text,
                            semester: semester.text,
                            dept: dept.text,
                            city: city.text,
                        ))
                        );
                    },
                    child: Text("Continue")
                    )   // ElevatedButton
                ],
            ),  // Column
        );  // Scaffold
    }
}

class NextScreen extends StatelessWidget{
    String?name, id, semester, dept, city;

    NextScreen({
        this.name,
        this.id,
        this.semester,
        this.dept,
        this.city
    });

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                children: [
                    Text("Name: " + name.toString()),
                    Text("Id: " + id.toString()),
                    Text("Semester: " + semester.toString()),
                    Text("Department: " + dept.toString()),
                    Text("City: " + city.toString()),
                ],
            ), // Column
        ); // Scaffold
    }
}