import 'package:flutter/material.dart';
import 'package:food_web/animation/enhancefader.dart';
import 'package:food_web/constant.dart';
import 'package:food_web/widgets/adaptiveText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
 late double height = MediaQuery.of(context).size.height;
 late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome to my portfolio".toUpperCase(),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: kTextcolor,
                        fontSize:  height * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                AdaptiveText(
                  "Charles",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                      fontSize:  width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w100,

                      letterSpacing: 4.0), textAlign: TextAlign.center,
                ),
                AdaptiveText(
                  "Omwa",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,

                      fontSize: width < 1200 ? height * 0.085 : height * 0.095,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 5.0), textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    EntranceFader(
                    offset: Offset(-10, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: kPrimaryColor,
                    ),])),

                    TyperAnimatedTextKit(
                        isRepeatingAnimation: true,
                        speed: Duration(milliseconds: 50),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: height * 0.03,
                          fontWeight: FontWeight.w200,
                          color:Colors.white,
                        ),
                        text: [
                          " Flutter Developer",
                          " Technical Writer",
                          " UI/UX Enthusiast"
                        ]),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(backgroundColor: Colors.black,
                          child: Image.asset("assets/images/fb.png",height: 30,width: 30,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(backgroundColor: Colors.white,
                          child: Image.asset("assets/images/insta.png",height: 30,width: 30,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(backgroundColor: Colors.black,
                          child: Image.asset("assets/images/linkedin.png",height: 30,width: 30,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(backgroundColor: Colors.white,
                          child: Image.asset("assets/images/git.png",height: 30,width: 30,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(backgroundColor: Colors.white,
                          child: Image.asset("assets/images/twit.png",height: 30,width: 30,)),
                    )

                  ],
                )

              ],
            ),
          SizedBox(width: 400,),

          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.01,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: Image.asset(
                  'assets/images/rick.png',
                  height: width < 1200 ? height * 0.8 : height * 0.85,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
