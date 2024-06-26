

import '../linker/linker.dart';

class MyContainerWidget extends StatelessWidget {
  double h;
  double w;
  String text;
   MyContainerWidget({super.key,
   required this.w,required this.h,
   required this.text});

  @override
  Widget build(BuildContext context) {
    return
    Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
    color: MyColors.greyColour,
    borderRadius: BorderRadius.circular(10)
    ),
    child: Center(
    child: Text(text,style: TextStyle(
    color: MyColors.LightGreen,fontSize: 18,fontWeight: FontWeight.w600
    ),),
    )
    );
  }
}
