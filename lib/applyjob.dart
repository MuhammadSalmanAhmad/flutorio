

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ApplyJOb extends StatefulWidget {
  const ApplyJOb({super.key});

  @override
  State<ApplyJOb> createState() => _ApplyJObState();
}

class _ApplyJObState extends State<ApplyJOb> {
  PlatformFile? pickedfile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    setState(() {
      pickedfile = result?.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 200,
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
                    width: 100,
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
                ElevatedButton(
                    onPressed: () {
                      final path = 'files/${pickedfile!.name}';
                    },
                    child: Text("Apply"))
              ],
            )),
      ),
    );
  }
}
