import 'package:flutter/material.dart';

void main(){
    runApp(MaterialApp(home: HomeScreen(),));
}

class HomeScreen extends StatefulWidget{
    const HomeScreen({Key?key}):super(key:key);

    @override
    State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
    TextEditingController name = TextEditingController();
    TextEditingController id = TextEditingController();

    String genderValue = "";
    
    bool hobby1 = false;
    bool hobby2 = false;
    bool hobby3 = false;

    String strhobby1 = "";
    String strhobby2 = "";
    String strhobby3 = "";

    final formKey = GlobalKey<FormState>();     // formValidation
    get val => null;

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text("User Info"),
            ),

            body: Form(
                key: formKey,
                child: Column(
                    children: [
                        SizedBox(height: 10,),
                        TextField(
                            controller: name,
                            decoration: InputDecoration(labelText: "Enter your name", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),),  
                        ),

                        SizedBox(height: 10,),
                        TextField(
                            controller: id,
                            decoration: InputDecoration(labelText: "Enter your id", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),), 
                        ),

                        SizedBox(height: 10,),
                        RadioListTile(value: 'Male', groupValue: genderValue, onChanged: (val){
                            setState((){
                                genderValue = val.toString();
                            });
                        },
                        title: Text("Male"),
                        ), // RadioListTile

                        RadioListTile(value: 'Female', groupValue: genderValue, onChanged: (val){
                            setState((){
                                genderValue = val.toString();
                            });
                        },
                        title: Text("Female"),
                        ), // RadioListTile

                        CheckboxListTile(value: hobby1, onChanged: (value){
                            setState((){
                                hobby1 = !hobby1;
                                if(hobby1){
                                    strhobby1 = 'Playing';
                                }
                            });
                        },
                        title: Text("Playing"),
                        ),  // CheckboxListTile

                        CheckboxListTile(value: hobby2, onChanged: (value){
                            setState((){
                                hobby2 = !hobby2;
                                if(hobby2){
                                    strhobby2 = 'Singing';
                                }
                            });
                        },
                        title: Text("Singing"),
                        ),  // CheckboxListTile

                        CheckboxListTile(value: hobby3, onChanged: (value){
                            setState((){
                                hobby3 = !hobby3;
                                if(hobby3){
                                    strhobby3 = 'Drawing';
                                }
                            });
                        },
                        title: Text("Drawing"),
                        ),  // CheckboxListTile

                        ElevatedButton(onPressed: (){
                            if(formKey.currentState!.validate()){
                                if(genderValue != ""){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => {
                                        NextSreen(
                                            name: name.text,
                                            id: id.text,
                                            gender: genderValue,

                                            hobbies: '${strhobby1.toString()}'
                                            '${strhobby2.toString()}'
                                            '${strhobby3.toString()}',
                                        )
                                    }))
                                }
                            }
                        },

                        child: Text("Continue"),
                        )

                    ],
                ),
            ),
        );
    }
}

class NextSreen extends StatelessWidget{
    String? name, id, gender, hobbies;
    NextSreen({
        this.name,
        this.id,
        this.gender,
        this.hobbies
    });

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Column(
                children: [
                    Text("Name: " + name.toString()),
                    Text("Id: " + id.toString()),
                    Text("Gender: " + gender.toString()),
                    Text("Hobbies: " + hobbies.toString()),
                ],
            ),
        );
    }
}