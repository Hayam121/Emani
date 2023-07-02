 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  double angle = 0.0;
  int currentIndex = 0;
  int counter = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var settingProvider = Provider.of<SettingsProvider>(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: mediaQuery.height * 0.38,
            child: Stack(
              children: [
                Positioned(
                  left: mediaQuery.width * 0.46,
                  top: 20,
                  child: Image.asset(
                    settingProvider.isDarkMood()
                        ? 'assets/images/head_of_seb7a_dark.png'
                        : 'assets/images/head_of_seb7a.png',
                    height: mediaQuery.height * 0.1,
                  ),
                ),
                Positioned(
                  top: 78,
                  left: mediaQuery.width * 0.2,
                  child: GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        settingProvider.isDarkMood()
                            ? 'assets/images/body_of_seb7a_dark.png'
                            : 'assets/images/body_of_seb7a.png',
                        height: mediaQuery.height * 0.27,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 70,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(.6),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              counter.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 140,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              azkar[currentIndex],
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  onClick() {
    setState(() {
      counter++;
      angle--;
      if (counter == 33) {
        currentIndex++;
        counter = 0;
      }
      if (currentIndex > azkar.length - 1) {
        currentIndex = 0;
      }
    });
  }
}

// class SephaScreen extends StatefulWidget {
//   const SephaScreen({super.key});
//   @override
//   State<SephaScreen> createState() => _SephaScreenState();
// }

// int counter = 0, index = 0, round = 0;
// // ignore: non_constant_identifier_names
// List<String> list_PraiseAllah = [
//   "سبحان اللَه",
//   "الحمد للًه ",
//   "اللَّهُ أَكْبَرُ",
// ];

// class _SephaScreenState extends State<SephaScreen> {
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     var column = Column(
//         children: [
//           const Spacer(),
//           Text(
//             list_PraiseAllah[index],
//             style:const TextStyle(fontSize: 30,color:  Color.fromARGB(235, 182, 153, 25),),

//           ),
//           const SizedBox(height: 10),
//           Text(
//             "${counter + 1}",
//             style: const TextStyle(fontSize: 30,color: Color.fromARGB(235, 182, 153, 25),),
//           ),
//           const SizedBox(height: 20),
//           InkWell(
//             onTap: () {
//               setState(() {
//                 _incrementCounter();
//               });
//             },   
// child: Container(
//             width: width * 0.4,
//             height: height * 0.19,
//             decoration: BoxDecoration(
//               border: Border.all(
//                 width: 2,
//               color: const Color.fromARGB(101, 150, 125, 27),
//               ),
//               shape: BoxShape.circle,
//                color: const Color.fromARGB(101, 150, 125, 27),
    
//             ),
//         child: const Center(
//               child: Text(
//                 "اضغط",
//                 style: TextStyle(
//                   fontSize: 30,
//               color: Color.fromARGB(255, 255, 255, 255),
//                   fontWeight: FontWeight.bold,
//                   shadows: [
//                     Shadow(
//                       offset: Offset(0, 0),
//               color: Color.fromARGB(101, 150, 125, 27),
//                   blurRadius: 7,
//                 ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//             ),
//             const Spacer(),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextButton(
//                   child: const Text(
//                     "البدأ مرة اخري",
//             style: TextStyle(fontSize: 25,color: Color.fromARGB(235, 182, 153, 25),fontWeight: FontWeight.bold),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _resetCounter();
//                     });
//                     },
//                   ),
//                 Text("  رقم الدورة : $round",
//                 style: const TextStyle(fontSize: 25,color: Color.fromARGB(235, 182, 153, 25),),
//             ),
//           ],
//         ),
//       ),
//   ]);
  
//     return Container(
//       padding:const EdgeInsets.only(top: 40),
//       margin: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),
//       decoration:BoxDecoration(
//     border: Border.all(color: const Color.fromARGB(101, 150, 125, 27),width:3,),
//     borderRadius: const BorderRadius.only(
//       topRight: Radius.circular(25),
//       bottomLeft: Radius.circular(25),
//     )
//   ),
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Center(
//             child: Text(
//               'فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى ',
//               style: TextStyle(fontSize: 24,color: Color.fromARGB(235, 182, 153, 25),),
//             ),
//           ),
//           backgroundColor: Colors.transparent,
//         ),
//         body: column,
//       ),
//     );
//   }

//   void _incrementCounter() {
//     counter++;
//     if (counter == 33) {
//       counter = 0;
//       index++;
//       if (index == 3) {
//         index = 0;
//         round++;
//       }
//     }
//   }

//   void _resetCounter() {
//     counter = 0;
//     index = 0;
//     round = 0;
//   }

//   // ignore: unused_element
//   void _oldIncrementCounter() {
//     if ((counter == 33 || counter == 66 || counter == 99) && index < 2) {
//       index++;
//     } else if (index == 2 && counter == 99) {
//       index = 0;
//       round++;
//       counter = 0;
//     }
//     counter++;
//   }
// }
