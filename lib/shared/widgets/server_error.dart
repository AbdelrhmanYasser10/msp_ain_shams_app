import'package:flutter/material.dart';

import '../blocs/app_cubit/app_cubit.dart';

class ServerError extends StatelessWidget {
  const ServerError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column
        (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.system_update_alt_sharp,
            size: 32.0,
            color: AppCubit.get(context).isDark!?Colors.white:Colors.black,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'Failed To Get Data From Sever Please Try Again Later',
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: AppCubit.get(context).isDark!?Colors.white:Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
