import 'package:assignment2/courseScreen.dart';
import 'package:flutter/material.dart';

class ListOfLanguages extends StatefulWidget {
  const ListOfLanguages({Key? key}) : super(key: key);

  @override
  State<ListOfLanguages> createState() => _ListOfLanguagesState();
}

class _ListOfLanguagesState extends State<ListOfLanguages> {
  List<String> images=[
    "assets/images/py.png",
    "assets/images/java.png",
    "assets/images/js.png",
    "assets/images/cpp.png",
    "assets/images/linux.png",
  ];
  List<String> descriptions=[
    "Python is one of the most popular and fastest programming language since half a decade.\nIf You think you have learnt it.. \nJust test yourself !!",
    "Java has always been one of the best choices for Enterprise World. If you think you have learn the Language...\nJust Test Yourself !!",
    "Javascript is one of the most Popular programming language supporting the Web.\nIt has a wide range of Libraries making it Very Powerful !",
    "C++, being a statically typed programming language is very powerful and Fast.\nit's DMA feature makes it more useful. !",
    "Linux is a OPEN SOURCE Operating System which powers many Servers and Workstation.\nIt is also a top Priority in Developement Work !",
  ];
  Widget listCard(String image,String language,String description){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
      child: InkWell(
        onTap: (){
          Scaffold courseScreen= course(image, language, description);
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> courseScreen));
        },
        child: Container(
          alignment: Alignment.center,
          height: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow:[BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0,3),
              )]
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children:[
                  const SizedBox(height: 20),
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
                        child: Image(image:AssetImage(image),
                          fit:  BoxFit.cover,
                        ),
                      )
                  ),
                  const SizedBox(height: 20,),
                  Text(language,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
                    child: Text(description,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20
                      ),),
                  )

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memariya App",
          style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),),
      ),
      body: ListView(
        children: [
          listCard(images[0],"Python", descriptions[0]),
          listCard(images[1],"Java", descriptions[1]),
          listCard(images[2],"Javascript", descriptions[2]),
          listCard(images[3],"c++", descriptions[3]),
          listCard(images[4],"Linux", descriptions[4]),
        ],
      ),
    );
  }
}
