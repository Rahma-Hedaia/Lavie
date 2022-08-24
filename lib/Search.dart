import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                //controller: fullNameController,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle:
                  TextStyle(color: Color.fromARGB(255, 151, 151, 151)),
                  prefixIcon: Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                style: TextStyle(color: Color.fromARGB(255, 151, 151, 151)),
              ),
              SizedBox(height: 25,),
              Text('Recent searchs',style: TextStyle(color: Color.fromARGB(255, 151, 151, 151))),
              SizedBox(height:20,),
              Row(
                children: [
                  Icon(Icons.watch_later_outlined,color: Color.fromARGB(255, 151, 151, 151)),
                  Text('gradenta plant',style: TextStyle(color: Color.fromARGB(255, 151, 151, 151)), ),
                  Spacer(),
                  Icon(Icons.delete_outline,color: Color.fromARGB(255, 151, 151, 151))
                ],
              ),
              SizedBox(height:20,),
              Row(
                children: [
                  Icon(Icons.watch_later_outlined,color: Color.fromARGB(255, 151, 151, 151)),
                  Text('gradenta plant',style: TextStyle(color: Color.fromARGB(255, 151, 151, 151)), ),
                  Spacer(),
                  Icon(Icons.delete_outline,color: Color.fromARGB(255, 151, 151, 151))
                ],
              ),
              SizedBox(height:20,),
              Row(
                children: [
                  Icon(Icons.watch_later_outlined,color: Color.fromARGB(255, 151, 151, 151)),
                  Text('snake plant',style: TextStyle(color: Color.fromARGB(255, 151, 151, 151)), ),
                  Spacer(),
                  Icon(Icons.delete_outline,color: Color.fromARGB(255, 151, 151, 151))
                ],
              )

            ],
        ),
      ),
    );
  }
}
