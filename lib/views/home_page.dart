import 'package:fitness_app/views/dashboard.dart';
import 'package:fitness_app/widgets/animation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController rippleController;
  late AnimationController scaleController;
  late Animation<double> rippleAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);

    rippleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    scaleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: const Dashboard()));
            }
          });

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });

    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController);

    rippleController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    rippleController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(image: 'assets/images/two.jpg'),
          makePage(image: 'assets/images/one.jpg'),
          makePage(image: 'assets/images/three.jpg'),
        ],
      ),
    );
  }

  Widget makePage({image}) {
    return Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(.3),
            Colors.black.withOpacity(.3),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 60),
                FadeAnimation(
                    1,
                    const Text(
                      'Exercise',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )),
                const SizedBox(height: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "15",
                          style: TextStyle(
                              color: Colors.yellow[400],
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                    FadeAnimation(
                        1.2,
                        const Text(
                          "Minutes",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                  ],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "3",
                          style: TextStyle(
                              color: Colors.yellow[400],
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )),
                    FadeAnimation(
                        1.2,
                        const Text(
                          "Exercises",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                  ],
                ),
                const SizedBox(height: 180),
                FadeAnimation(
                    1,
                    const Align(
                      child: Text(
                        "Start the morning with your health",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w100),
                      ),
                    )),
                const SizedBox(height: 30),
                FadeAnimation(
                    1,
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedBuilder(
                        animation: rippleAnimation,
                        builder: (context, child) => SizedBox(
                          width: rippleAnimation.value,
                          height: rippleAnimation.value,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(.4)),
                            child: InkWell(
                              onTap: () {
                                scaleController.forward();
                              },
                              child: AnimatedBuilder(
                                animation: scaleAnimation,
                                builder: (context, child) => Transform.scale(
                                  scale: scaleAnimation.value,
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.pink),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
