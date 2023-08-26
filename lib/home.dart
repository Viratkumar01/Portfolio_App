import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myfunc(number, type){
    return Row(
      children: [
        Text(number,
            style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
            )),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child:Text(type)

        )
      ],
    );
  }
  myfun2(icon, spec){
    return SizedBox(
      width: 100,
      height: 100,
      child:  Card(
        margin: const EdgeInsets.all(0),
        color: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              spec,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),)
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
       appBar: AppBar(
         leading : PopupMenuButton(
         color: Colors.white,
         icon: const Icon(Icons.menu),
         itemBuilder: (context) => [
           PopupMenuItem(
             child: TextButton(
               child: const Text('EDUCATION'),
               onPressed: () {
                 Navigator.pushNamed(context, 'education');
               },
             ),
           ),
           PopupMenuItem(
               child: TextButton(
               child: const Text('PROJECTS'),
               onPressed: () {
                 Navigator.pushNamed(context, 'projects');
               },
               ),
           ),

           PopupMenuItem(
              child: TextButton(
              child: const Text('SKILLS'), // Change button text to 'SKILLS'
              onPressed: () {
                  Navigator.pushNamed(context, 'skills');
              },
              ),
           ),
           PopupMenuItem(
               child: TextButton(
                 child: const Text('WORK EXPERIENCE',style: TextStyle(color: Colors.blue),),
                 onPressed: () {
                   Navigator.pushNamed(context, 'workexperience');
                 },
               )),
           PopupMenuItem(
               child: TextButton(
                 child: const Text('ABOUT ME'),
                 onPressed: () {
                   Navigator.pushNamed(context, 'about');
                 },
               ))
           ],
         ),
         elevation: 0,
         backgroundColor: Colors.transparent,
        ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 45,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.3, 0.6, 1.0],
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top:22),
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
                top:MediaQuery.of(context).size.height*0.55
              ),

              child: const Column(
                children: [
                  Text('VIRAT KUMAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Software Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            )
          ],
        ),

        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
            height: 500,
            // child: Center(
            //   child: Text('This is the content of the sheet'),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myfunc('10', 'Projects'),
                    //myfunc('15', 'Clients'),
                    //myfunc('30', 'Messages'),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Specialized in',
                 style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myfun2(Icons.android, 'Android'),
                        myfun2(Icons.android, 'DSA'),
                        myfun2(Icons.android, 'Robotics')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myfun2(Icons.android, 'CP'),
                        myfun2(Icons.android, 'Python'),
                        myfun2(Icons.android, 'AI')
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myfun2(Icons.android, 'HTML'),
                        myfun2(Icons.android, 'CSS'),
                        myfun2(Icons.android, 'Javascript')
                      ],
                    )
                  ],
                )
              ],
            ),
            );
        },
      ),
    );
  }
}
