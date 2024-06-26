

import '../linker/linker.dart';

class MyTextFeild extends StatelessWidget {
  TextEditingController controller;
  String hint;
 Color labelColor;
 Color label;
  MyTextFeild({super.key,
  required this.controller, required this.hint,this.labelColor=Colors.lightGreen,this.label=Colors.black });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:MyColors.greyColour,
      ) ,
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: labelColor),
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color:label,fontSize: 20,fontWeight: FontWeight.w800),
            border: InputBorder.none
        ),
      ).paddingOnly(left: 130)
    ).paddingOnly(left: 50,right: 50);
  }
}
