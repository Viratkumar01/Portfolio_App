import 'package:flutter/material.dart';

class MyEducation extends StatefulWidget {
  const MyEducation({super.key});

  @override
  State<MyEducation> createState() => _MyEducationState();
}

class _MyEducationState extends State<MyEducation> {

  myEducation(lang,title,desc){
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width*0.9,
      child: Card(
        color: Colors.grey,
        child: Container(
          margin: const EdgeInsets.only(left: 5,right: 5,top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 1,
              ),
              Text(
                desc,//description
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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
          'EDUCATION',
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
                  myEducation('National Institute of Technology,Patna', ' -B.Tech Computer Science and Engineering (2021-2025)', 'CGPA-7.64'),
                  myEducation('DAV Public School,Patna', ' -Intermediate,Central Board of Secondary Education', 'Percentage-88.2'),
                  myEducation('Bijendra Public School,Purnia', ' -Matriculation,Central Board of Secondary Education', 'Percentage-90.2'),
                ],
              )
          ),
        ),
      ),
    );
  }
}
