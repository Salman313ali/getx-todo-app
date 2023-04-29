import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtodoapp/app/core/utils/extensions.dart';
import 'package:getxtodoapp/app/modules/home/controller.dart';
import 'package:getxtodoapp/app/widgets/icons.dart';

class AddCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = getIcons();
    //taking the width of screen and mins the 12 because we need spaces between cards
    var squareWidth = Get.width - 12.0.wp;
    return Container(
      // dividing by 2 because we have max 2 coulms
      width: squareWidth / 2,
      height: squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        //what is async?
        onTap: () async {
          await Get.defaultDialog(
            titlePadding: EdgeInsets.symmetric(vertical: 5.0.wp),
            radius: 5,
            title: 'Task Type',
          );
        },
        child: DottedBorder(
          color: Colors.grey[400]!,
          dashPattern: const [8, 4],
          child: Center(
            child: Icon(
              Icons.add,
              size: 10.0.wp,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
