import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class JobCard extends StatelessWidget {
  const JobCard({super.key});



  @override
  Widget build(BuildContext context) {
 
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: double.infinity,
        width: 170,
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white54,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 100,
                    width: double.infinity,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/logo.png'),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "FLutter Mobile Developer",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     const Text(
                  "Lahore",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                 const Text(
                  "on site",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                  ],
                ),
                 const Text(
                  "Description : ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "We are looking for a Mid Level Flutter-Dart mobile application development software engineer. As a Flutter Developer, you should have 1 to 2 years of Flutter application development expereince. You should be comfortable around VS Code , Android Studio & Xcode. You should have atleast 2 applications live on Appstore & Playstore. You should also be a team player with a knack for visual design and utility.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                ElevatedButton(onPressed: (){

                }, child: Text("Apply"))
              ],
            )),
      ),
    );
  }
}