

import '../linker/linker.dart';

class MyText extends StatelessWidget {
  String text;
  Color clr;
  double font;
   MyText({super.key,required this.text,required this.clr,this.font=16});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: clr,fontSize: font,
        fontWeight: FontWeight.w600));
  }
}
