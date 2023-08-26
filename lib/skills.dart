import 'package:flutter/material.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {

  myskill(title, desc){
    return SizedBox(
      height: 140,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Colors.grey,
        child: Container(
          margin: const EdgeInsets.only(left: 25,right: 25,top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                desc,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 1,
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
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        //centerTitle: true, // Center the title
        title: const Text(
          'SKILLS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:100),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                myskill('Languages:', 'C/C++, Python'),
                myskill('Developer Tools:', 'Visual Studio Code, Sublime Text, Github'),
                myskill('Coursework:', 'DSA, Artificial Intelligence, Machine learning, OOPs, Web Development, OS, Computer Network, DBMS, Minor Degree Course in Robotics (Department of Mechanical Engineering, NIT Patna)'),
                myskill('Areas of Interest:', 'Competitive Programming, DSA, AI'),
                myskill('Soft skills:', 'Communication Skills, Time Management, Teamwork, Innovative'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
