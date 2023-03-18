import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostJob extends StatelessWidget {
  const PostJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Post Job"),backgroundColor: Colors.blueGrey,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Wrap(
            runSpacing: 20,
            
            children: [
               TextFormField(
                        validator: (value) {},
                        decoration: const InputDecoration(
                          labelText: "Job title ",
                          icon: Icon(Icons.work),
                          labelStyle: TextStyle(color: Color(0xff616161)),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {},
                        decoration: InputDecoration(
                          labelText: "Description",
                          icon: Icon(Icons.textsms),
                          labelStyle: TextStyle(color: Color(0xff616161)),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {},
                        decoration: InputDecoration(
                          labelText: "Location",
                          icon: Icon(Icons.location_on),
                          labelStyle: TextStyle(color: Color(0xff616161)),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {},
                        decoration: const InputDecoration(
                          labelText: "Salary",
                          icon: Icon(Icons.attach_money),
                          labelStyle: TextStyle(color: Color(0xff616161)),
                        ),
                        obscureText: true,
                      ),
              SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
                  onPressed: () {
                   
                  },
                  child: Text(
                    "Post Job",style: TextStyle(color: Colors.white),
                  )),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
