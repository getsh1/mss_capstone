
import 'package:assignment2/list_of_languages.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool valueFirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 100,),
                      Text("Memariya App",
                        textAlign: TextAlign.start,
                        style:TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30
                        ) ,),
                      SizedBox(height: 10,),
                      Text("Transform Your Future with the power of our \n Development Learning App!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:18,
                            fontWeight: FontWeight.w400
                        ),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 25),
                child: Container(
                  height: 280,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const TextField(

                        autofocus: true,

                        style: TextStyle(color: Colors.black, fontSize: 20),

                        decoration: InputDecoration(

                            border:UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width:5,
                                )
                            ),

                            hintText: 'Email',

                            hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),

                      ),
                      const SizedBox(height: 20,),
                      const TextField(

                          autofocus: true,

                          style: TextStyle(color: Colors.black, fontSize: 20),

                          decoration: InputDecoration(

                              border:UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width:5,
                                  )
                              ),
                              hintText: 'Password (optional)',
                              hintStyle: TextStyle(color: Colors.grey, fontSize: 15))

                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.blue,
                            value: valueFirst,
                            onChanged: (value) async {
                              setState(() {
                                valueFirst = value!;
                              });
                            },
                          ),
                          const SizedBox(width: 20,),
                          const Text("Remember me",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ListOfLanguages()));
                          },
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: const Center(
                                child: Text("LogIN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20
                                  ),)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}















































































