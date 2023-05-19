import 'package:fitness_app/widgets/animation.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.grey[800], fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/one.jpg'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // const SizedBox(height: 10),
              // FadeAnimation(
              //     1,
              //     Text(
              //       "Today",
              //       style: TextStyle(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.grey[800]),
              //     )),
              // const SizedBox(height: 20),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //         child: FadeAnimation(
              //             1,
              //             Container(
              //               width: 100,
              //               margin: const EdgeInsets.only(right: 10),
              //               decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(10),
              //                   gradient: LinearGradient(colors: [
              //                     Colors.blue,
              //                     Colors.blue.withOpacity(.7)
              //                   ])),
              //               child: Padding(
              //                 padding: const EdgeInsets.all(20.0),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: <Widget>[
              //                     FadeAnimation(
              //                         1.2,
              //                         const Text(
              //                           "Steps",
              //                           style: TextStyle(
              //                               color: Colors.white, fontSize: 30),
              //                         )),
              //                     const SizedBox(height: 20),
              //                     FadeAnimation(
              //                         1.4,
              //                         const Text(
              //                           "3 500",
              //                           style: TextStyle(
              //                               color: Colors.white,
              //                               fontSize: 25,
              //                               fontWeight: FontWeight.w100),
              //                         )),
              //                   ],
              //                 ),
              //               ),
              //             ))),
              //     Expanded(
              //       child: FadeAnimation(
              //           1,
              //           Container(
              //             width: 100,
              //             margin: const EdgeInsets.only(left: 10),
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(10),
              //                 gradient: LinearGradient(colors: [
              //                   Colors.pink,
              //                   Colors.red.withOpacity(.7)
              //                 ])),
              //             child: Padding(
              //               padding: const EdgeInsets.all(20.0),
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: <Widget>[
              //                   FadeAnimation(
              //                       1.2,
              //                       const Text(
              //                         "Sports",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 30),
              //                       )),
              //                   const SizedBox(height: 20),
              //                   FadeAnimation(
              //                       1.4,
              //                       const Text(
              //                         "25 Min",
              //                         style: TextStyle(
              //                             color: Colors.white,
              //                             fontSize: 25,
              //                             fontWeight: FontWeight.w100),
              //                       )),
              //                 ],
              //               ),
              //             ),
              //           )),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 40),
              // FadeAnimation(
              //     1.4,
              //     Text(
              //       "Health Categories",
              //       style: TextStyle(
              //           color: Colors.grey[800],
              //           fontWeight: FontWeight.bold,
              //           fontSize: 20),
              //     )),
              // const SizedBox(height: 20),
              // FadeAnimation(
              //     1,
              //     Container(
              //       width: double.infinity,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           color: Colors.white),
              //       child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: <Widget>[
              //             FadeAnimation(
              //                 1,
              //                 Container(
              //                   width: double.infinity,
              //                   padding: const EdgeInsets.all(20),
              //                   decoration: BoxDecoration(
              //                       border: Border(
              //                           bottom: BorderSide(
              //                               color: Colors.grey[200]!))),
              //                   child: Text(
              //                     "Activity 1",
              //                     style: TextStyle(
              //                         color: Colors.grey[800],
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 )),
              //             FadeAnimation(
              //                 1.2,
              //                 Container(
              //                   width: double.infinity,
              //                   padding: const EdgeInsets.all(20),
              //                   decoration: BoxDecoration(
              //                       border: Border(
              //                           bottom: BorderSide(
              //                               color: Colors.grey[200]!))),
              //                   child: Text(
              //                     "Activity 2",
              //                     style: TextStyle(
              //                         color: Colors.grey[800],
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 )),
              //             FadeAnimation(
              //                 1.4,
              //                 Container(
              //                   width: double.infinity,
              //                   padding: const EdgeInsets.all(20),
              //                   decoration: BoxDecoration(
              //                       border: Border(
              //                           bottom: BorderSide(
              //                               color: Colors.grey[200]!))),
              //                   child: Text(
              //                     "Activity 3",
              //                     style: TextStyle(
              //                         color: Colors.grey[800],
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 )),
              //             FadeAnimation(
              //                 1.6,
              //                 Container(
              //                   width: double.infinity,
              //                   padding: const EdgeInsets.all(20),
              //                   decoration: BoxDecoration(
              //                       border: Border(
              //                           bottom: BorderSide(
              //                               color: Colors.grey[200]!))),
              //                   child: Text(
              //                     "Activity 4",
              //                     style: TextStyle(
              //                         color: Colors.grey[800],
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 )),
              //           ]),
              //     )),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.2),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 109,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(Icons.play_arrow),
                          ),
                        ),
                      ],
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
