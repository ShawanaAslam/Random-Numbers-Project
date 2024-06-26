
import '../../controller/linker/linker.dart';



class RandomNumbers extends StatefulWidget {
  const RandomNumbers({super.key});

  @override
  State<RandomNumbers> createState() => _RandomNumbersState();
}

class _RandomNumbersState extends State<RandomNumbers> {
//String ButtonText='Start';
  TextEditingController n1=TextEditingController();
  String message='Start Again';
  late int number;
  void RandomNumbers(){
    Random random=Random();
    number=random.nextInt(10);//0-9
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    RandomNumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.LightGreen,
body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

   MyTextFeild(controller: n1, hint: 'Input Any Number',),
    SizedBox(height: 50,),

   InkWell(
     onTap: (){
       RandomNumbers();
       int check =int.parse(n1.text);
    if(check==number)
     {
    String yournumber=n1.text.toString();
    //(Get.defaultDialog) MessageBox
     Get.defaultDialog(
       title: 'Congratulations',
       content: Column(
         children: [
           MyText(text:"Lucky Number : $number",clr:Colors.black,font: 16,),

           MyText(text: 'Your Number is : $yournumber', clr: Colors.black,font: 16,),

           SizedBox(height: 10,),
           MyText(text:"You Win The Game \n"
                  "           Yeah..!" , clr:MyColors.LightGreen,font: 18, )
          ]
       ),
     );
  }
else
  {
    String yournumber=n1.text.toString();
    //(Get.defaultDialog) MessageBox
    Get.defaultDialog(

        title: 'Alert',
        content: Column(
          children: [
            MyText(text:"Lucky Number : $number",clr:Colors.black,font: 16,),

            MyText(text: 'Your Number is : $yournumber', clr: Colors.black,font: 16,),

            SizedBox(height: 5,),
            MyText(text:" No Match \n Try Again", clr:MyColors.LightGreen,font: 18, )

          ],
        )
    );

    //setState((){

      //});
      Future.delayed(Duration(seconds: 4),(){
        setState((){
          n1.clear();
          Get.back();
      //Get.defaultDialog().back;
        });

      });
  }
     },
       child:

       MyContainerWidget(w: 100, h: 50, text: 'Try Luck')
     ),
         //  Future.delayed(Duration(seconds: 4),(){
         //  setState((){
         //  n1.clear();
         //Get.defaultDialog().back;
         // }),
         //Text('$number')
  ],
)
    );
  }
}
