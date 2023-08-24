import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child:Column(
            children: <Widget>[
              MyWidget(),
              Widget2(),
            ]
          )
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Text(
      'Goodbye world',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}


class Widget2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children:[
           const Text(
          "Hola mundo",
              style: TextStyle(fontSize: 30),
        ),
        TextButton(
          onPressed:(){},
          style: TextButton.styleFrom(
                 backgroundColor: Colors.redAccent,
                 foregroundColor: Colors.white),
          child: const Text("Hola"),
         )
        ]
        
       )
  );
  }
}
