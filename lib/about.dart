import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  myfunc3(iconid,link){
    return Row(
      children: [
        IconButton(
            onPressed: () {
              launch(link);
            },
            icon: Icon(iconid,
              color: Colors.white,))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top:50),
            child: ShaderMask(shaderCallback: (rect) {
              return const LinearGradient(
                  begin: Alignment.center,
                  end:Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/CTG.jpg', height: 600, fit: BoxFit.contain
                )),
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top:MediaQuery.of(context).size.height*0.65
              ),

              child: Column(
                children: [
                  const Text('Hello I am',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  const Text('VIRAT KUMAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text('Software Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 130,
                    child: TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,foregroundColor: Colors.black),
                      child: const Text('Hire Me'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myfunc3(FontAwesomeIcons.instagram,'https://instagram.com/01viratkumarchiku?utm_source=qr&igshid=NGExMmI2YTkyZg%3D%3D'),
                      myfunc3(FontAwesomeIcons.github,'https://github.com/Viratkumar01?tab=repositories'),
                      myfunc3(FontAwesomeIcons.linkedin,'https://www.linkedin.com/in/virat-kumar-549397224'),
                      myfunc3(FontAwesomeIcons.facebook,'https://www.facebook.com/profile.php?id=100074445457036&mibextid=ZbWKwL'),
                      myfunc3(FontAwesomeIcons.twitter,'https://twitter.com/Viratkumarchiku')
                    ],
                  )
                ],
              )
          )
        ],
      ),
      );
  }
}