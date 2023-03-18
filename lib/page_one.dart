
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children:  [
          SizedBox(
            height: 100,
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 400,
              child: Center(
                  child: Image(
                image: AssetImage('assets/jobsearch.jpg'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                 Text(
                  "Find your dream job",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30,),
                Text(
                  "Search and find your dream job easily and quickly",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
