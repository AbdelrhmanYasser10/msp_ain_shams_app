import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msp_app_version2/modules/crew_screen/crew_cubit/crew_cubit.dart';

import '../../shared/widgets/slogan.dart';

class CrewScreen extends StatelessWidget {
  CrewScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CrewCubit, CrewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Slogan(),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          controller:
                              CrewCubit.get(context).adminCodeController,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Enter Crew Code',
                            hintStyle: GoogleFonts.raleway(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Crew Code Cannot Be Empty';
                            }
                          },
                        ),
                        const SizedBox(
                          height: 45.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              //*
                              //*
                              // Navigate to dashboard
                              //*
                              //*
                            }
                          },
                          child: Text(
                            'Join as Crew Member',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Join as Guest',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
