import 'package:flutter/material.dart';

Scaffold course(String courseImage,String courseName,String courseDescription){
  return Scaffold(
    backgroundColor: Colors.deepPurple[100],
    appBar: AppBar(
      title: const Text("Memariya App",
        style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
        ),),
    ),
    body:Column(
      children: [
        const SizedBox(height: 10,),
        Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0,3),
                )]
            ),
            child: ClipOval(
              child: Image(image:AssetImage(courseImage),
                fit:  BoxFit.cover,
              ),
            )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(courseName,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Colors.white
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                height: 140,
                child: Text(courseDescription,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500
                  ),),
              ),) ,
                    ),
                  ),
                ],
              ),
            );

}
