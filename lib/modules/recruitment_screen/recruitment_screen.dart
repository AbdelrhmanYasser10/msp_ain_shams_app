import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';

class RecruitmentScreen extends StatelessWidget {
  const RecruitmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0
          ),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: committeesName.length + 1,
              separatorBuilder: (_,index)=>const SizedBox(
                height: 20.0,
              ),
              itemBuilder: (_,index)=> index < committeesName.length ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: committeesColor[index],
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex : 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18.0,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                                committeesImages[index],
                              width: 64,
                              height: 64,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Text(
                                committeesName[index],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.headline1!..copyWith(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      flex : 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0,
                            vertical: 10.0
                        ),
                        child: Text(
                          'lorem Text'*300,
                          overflow: TextOverflow.ellipsis,
                          maxLines: (MediaQuery.of(context).size.height * 0.54).ceil(),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ):Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20.0
                ),
                child: ElevatedButton(
                  onPressed: (){

                  },
                  child: Text(
                    'Join Crew Now',
                    style: GoogleFonts.raleway(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
          ),
        ),
      ),
    );
  }
}
