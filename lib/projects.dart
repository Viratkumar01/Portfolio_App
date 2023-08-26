import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {

  myproject(lang,title,desc,star){
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
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  const Icon(
                      Icons.star,
                      color:Colors.white,
                      size: 18
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                        color: Colors.white),
                  ),
                  const SizedBox(width: 225),

                  const IconButton(
                      onPressed: null,//() {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
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
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        //centerTitle: true, // Center the title
        title: const Text(
          'PROJECTS',
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
                myproject('WORLD TIME APP', 'Flutter', ' -Created an application using Flutter that elegantly displays the current time in various cities worldwide. \n -Showing captivating background images depicting the dynamic transition between day and night.', '5'),
                myproject('SUDOKU GAME', ' HTML,CSS and JavaScript', ' -Developed a logic-based Sudoku game using HTML,CSS and JavaScript. \n -Implemented the requirement that each digit from 1 to 9 must appear exactly once in every row,column and box', '5'),
                myproject('PORTFOLIO APP', 'Flutter', ' -Created a portfolio app using Flutter to showcase work experience,education,skills and testimonials. \n -Aimed to present a comprehensive overview of our professional profile to potential clients and employers.', '5'),
                myproject('SNAKE GAME', 'Flutter', ' -Developed a Snake game using flutter. \n -A common single-player game, where both the head and tail move, and each item eaten makes the snake longer', '5'),
          ],
        )
      ),
    ),
    ),
    );
  }
}
