import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class GenerateExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GenerateExceptionWidget({Key? key, required this.onPress})
      : super(key: key);

  @override
  State<GenerateExceptionWidget> createState() =>
      _GenerateExceptionWidgetState();
}

class _GenerateExceptionWidgetState extends State<GenerateExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: height * .15,
          ),
          Icon(
            Icons.cloud_off,
            color: Colors.red,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: Text(
              "We're unable to process your request.\n Please try again",
              textAlign: TextAlign.center,
            )),
          ),
          SizedBox(
            height: height * .15,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                  color: AppColor.kDarkGreen,
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                'Retry',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
