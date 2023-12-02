import 'package:flutter/material.dart';
import 'package:project_design/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar( 
     actions: [
     PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (context){
      return [
        PopupMenuItem(
        child: Text("Home"),
        value: "Home",
        ),
        PopupMenuItem(
        child: Text("Account"),
        value: "Account",
        ),
        ];
      
     })
     ],
    ),
    drawer: Drawer(
child: ListView(
  children: [
    SizedBox(height: 15,),
    Center(
      child: Stack(
       children: [
        SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            
            backgroundImage: AssetImage("assets/Mostakim/mostakim.jpg"),
           ),
      
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
           
            decoration: BoxDecoration(
               color: Colors.pink,
              borderRadius: BorderRadius.circular(200)
            ),
            child: IconButton(onPressed: (){},
           icon: Icon(Icons.photo_camera,color: Colors.white,size: 22,))),
        )
       ],
      ),
    ),
    SizedBox(height: 30,),
    ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
      },
      title: Text("Home"),
      trailing: Icon(Icons.home),
    ),
    ListTile(
      onTap: (){},
      title: Text("Account"),
      trailing: Icon(Icons.account_box),
    ),
  ],
),
    ),
  );
  }
}