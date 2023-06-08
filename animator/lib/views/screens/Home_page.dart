import 'package:animator/controllers/providers/planet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    getplanetData();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
      upperBound: 1,
      lowerBound: 0,
    )..repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  getplanetData() async {
    await Provider.of<planet_provider>(context, listen: false).FromJson();
    print(Provider.of<planet_provider>(context, listen: false).planet_details);
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 10,
              height: 100,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("MyProfilePage");
                  setState(() {});
                },
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 50,
              height: 200,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("sun");
                },
                child: Image(
                  image: NetworkImage(
                      "${Provider.of<planet_provider>(context, listen: false).planet_details[8].image}"),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 240,
              height: 96,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Mercury");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[0].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 40,
              height: 130,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("venus");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[1].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 310,
              left: 160,
              height: 170,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Earth");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[2].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 190,
              right: 20,
              height: 150,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Mars");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[3].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 220,
              right: 10,
              height: 190,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Jupiter");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[4].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 200,
              left: 50,
              height: 130,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Saturn");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[5].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              right: 120,
              height: 120,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Uranus");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[6].image}"),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 18,
              right: 10,
              height: 120,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("Neptune");
                },
                child: RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[7].image}"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
