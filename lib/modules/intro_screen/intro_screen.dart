import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msp_app_version2/shared/style/colors/colors.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkTheme,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/images/MSP LOGO bright.png',
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: mainOptionButton(
                        color: blueColor,
                        text: 'Crew',
                        icon: FontAwesomeIcons.person,
                        function: (){}
                      ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                      child: mainOptionButton(
                        color: greenColor,
                        text: 'Events',
                        icon: FontAwesomeIcons.calendar,
                        function: (){}
                      ),
                  ),
                ],
              ),
              mainOptionButton(
                  color: redColor,
                  text: 'Recruitment',
                  icon: FontAwesomeIcons.list,
                  function: (){}
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mainOptionButton({
  required VoidCallback function,
  required IconData icon,
  required String text,
  required Color color
})=>GestureDetector(
    onTap: function,
    child: CircleAvatar(
      radius: 60.0,
      backgroundColor: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 36.0,
            color: Colors.white,
          ),
          Text(
            text,
            style: GoogleFonts.cairo(
                fontSize: 18.0,
                color: Colors.white
            ),
          ),
        ],
      ),
    ),
  );
}
