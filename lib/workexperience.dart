import 'package:flutter/material.dart';

class MyWorkExperience extends StatefulWidget {
  const MyWorkExperience({super.key});

  @override
  State<MyWorkExperience> createState() => _MyWorkExperienceState();
}

class _MyWorkExperienceState extends State<MyWorkExperience> {

  myExperience(title, desc, lang){
    return SizedBox(
      height: 220,
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
                style: const TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                lang,
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
          'WORK EXPERIENCE',
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
                myExperience('Tutor & Mentor','(Sankalp,NIT PATNA)', '-Provided free and quality education to needy students through a non-profit organization. \n-Collaborated with a dedicated team to create effective teaching methods, ensuring personalized attention to each student`s needs.'),
                myExperience('Member','(Robotics Club,NIT PATNA)', 'Fostering innovation and technical skills within NIT Patna`s Robotics Club.\n-Promoting awareness of automation, robotics, and electronics. '),
                myExperience('Volunteer','(NSS,NIT PATNA)','Engaged in impactful social welfare activities, contributing to the community.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
