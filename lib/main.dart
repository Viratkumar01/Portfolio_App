import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/projects.dart';
import 'home.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/workexperience.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home':(context) => const MyHome(),
      'about':(context) => const MyAbout(),
      'projects':(context) => const MyProjects(),
      'skills':(context) => const MySkills(),
      'education':(context) => const MyEducation(),
      'workexperience':(context) => const MyWorkExperience(),
    }
  ));
}



