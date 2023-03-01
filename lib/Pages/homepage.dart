

import 'package:code4/Pages/student.dart';
import 'package:code4/Pages/student_details.dart';
import 'package:flutter/material.dart';
import 'form_page.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Student estudent =
  Student(
    name: '',
    birthday: '',
    gender: '',
    age: '',
    address: '',

  );
  List information =[];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Information'),
      ),
      body: ListView.builder(
        itemCount: information.length,
        itemBuilder: (context, index){

          return Dismissible(
            key: Key(index.toString()),
            onDismissed: (dismiss) {
              setState(() {
                information.removeAt(index);
              });
            },
            child: Card(
              child: ListTile(
                title: Text(information[index].name),
                subtitle: Text('${information[index].address} - ${information[index].age}'),
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=> DetailsPage(details: information[index])
                      )
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          Student newlistinfo = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context )=> const FormPage())
          );
          if(newlistinfo.name != null){
            setState(() {
              information.add(newlistinfo);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
