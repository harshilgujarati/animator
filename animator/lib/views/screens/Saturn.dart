import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/providers/planet_provider.dart';

class Saturn extends StatefulWidget {
  const Saturn({super.key});

  @override
  State<Saturn> createState() => _SaturnState();
}

class _SaturnState extends State<Saturn>
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/Firefly universe picture black with some stars 17787.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).popAndPushNamed("Home_page");
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  "The ${Provider.of<planet_provider>(context, listen: false).planet_details[5].name}",
                  style: GoogleFonts.bebasNeue(
                    textStyle: TextStyle(
                        fontSize: 104,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade400),
                  ),
                ),
                RotationTransition(
                  turns: animationController,
                  child: Image(
                    image: NetworkImage(
                        "${Provider.of<planet_provider>(context, listen: false).planet_details[5].image}"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange.shade300,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                "Name :",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 44,
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            Text(
                                "${Provider.of<planet_provider>(context).planet_details[5].name}",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 44,
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ],
                        ),
                        height: 70,
                        width: 378,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                "Velocity :",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 44,
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            Text(
                                "${Provider.of<planet_provider>(context).planet_details[5].velocity}",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 44,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ],
                        ),
                        height: 70,
                        width: 378,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                "Distance :",
                                style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                    fontSize: 44,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            Text(
                                "${Provider.of<planet_provider>(context).planet_details[5].distance}",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 44,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ],
                        ),
                        height: 70,
                        width: 378,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                    "Description",
                    style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(
                        fontSize: 60,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "${Provider.of<planet_provider>(context).planet_details[5].description}",
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                        ),
                        height: 220,
                        width: 378,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
