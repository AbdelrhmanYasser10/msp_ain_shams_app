import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:msp_app_version2/shared/widgets/horizontal_divider.dart';

import '../../../models/event_model/event_model.dart';
import '../../../shared/blocs/app_cubit/app_cubit.dart';
import '../../../shared/constatns/constants.dart';
import '../../../shared/widgets/slogan.dart';
import '../../../shared/widgets/social_button.dart';
import '../../../shared/widgets/vertical_divider.dart';
import '../constants/constatns.dart';
List<String> information = [];

class EventDetailsScreen extends StatelessWidget {
  final EventModel model;
  const EventDetailsScreen({Key? key , required this.model}) : super(key: key);

  void fillInfoList(){
    information.add(DateFormat.yMMMd().format(DateTime.parse(model.createdAt)));
    information.add(DateFormat.Hm().format(DateTime.parse(model.createdAt)));
    information.add(model.location);
    information.add("${model.fees}LE");
  }

  Widget buildSliverAppBar({required context}) {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          model.name,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        background: Hero(
            tag: model.id,
            child: Container(
              color: Colors.grey,
              child: Image(
                image: NetworkImage(model.img),
                errorBuilder: (context, object, stackTrace) {
                  return Image.asset("assets/images/MSP LOGO WHITE.png");
                },
                fit: BoxFit.cover,
              ),
            )),
      ),
    );
  }
  Widget eventMoreDetails({
    required context,
    required IconData icon,
    required String info,
  })=>Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      color: Colors.blueGrey.shade100,
      borderRadius: BorderRadius.circular(10.0),

    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
              icon
          ),
          const Spacer(),
          Text(
            info,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {

    fillInfoList();
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            buildSliverAppBar(context: context),
            SliverList(
              delegate:SliverChildListDelegate(
                [
                  Container(
                    margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0
                              ),
                              child: Text(
                                model.description,
                                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 50.0,
                        ),
                        SizedBox(
                          height: 80.0,
                          child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index)=>eventMoreDetails
                                (context: context,
                                  icon: icons[index],
                                  info: information[index]
                              ),
                              separatorBuilder: (context,index)=>const HorizontalDivider(),
                              itemCount: 4
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Follow Us ',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        verticalDivider(),
                        SizedBox(
                          height: 50,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context,index)=>SocialMediaButton(
                                imageUrl: socialNetworkImages[index],
                                url:socialMediaLinks[index],
                              ),
                              separatorBuilder: (context,index)=>const SizedBox(width: 5.0,),
                              itemCount: 3
                          ),
                        ),

                        const SizedBox(
                          height: 100.0,
                        ),

                        Container(
                          height: 2.0,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25.0
                          ),
                          decoration:  BoxDecoration(
                              color: AppCubit.get(context).isDark!?Colors.white:Colors.black,
                              borderRadius:const  BorderRadius.horizontal(
                                  left: Radius.circular(5.0),
                                  right: Radius.circular(5.0)
                              )
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Slogan(),

                        const SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}