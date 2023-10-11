import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{

  runApp(MaterialApp(home: calcy(),debugShowCheckedModeBanner: false,));

}

class calcy extends StatefulWidget {
  const calcy({super.key});

  @override
  State<calcy> createState() => _calcyState();
}

class _calcyState extends State<calcy> {
  String R = "";
  String A = "", B = "";
  int T = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(appBar: AppBar(title: Text("Calculator",style: TextStyle(color: Colors.red,fontSize: 45,fontWeight: FontWeight.bold,),),centerTitle: true,backgroundColor: Colors.black,),
    backgroundColor: Colors.black,
      body: Container(height: double.infinity,width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Container(height: 70,width: double.infinity,margin: EdgeInsets.only(top: 70,bottom: 40),child: Text("$R",style: TextStyle(color: Colors.white,fontSize: 25),),),
                Container(
                  child: Row(children: [
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        R = "";
                      });
                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("AC",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        R=R.substring(0,R.length-1);
                      });
                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("C",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                    Expanded(child: InkWell(child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle,),child: Text("%",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        A = R;
                        R = "";
                        T = 4;
                      });
                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle,),child: Text("/",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                  ],),
                ),
                Container(
                  child: Row(children: [
                    Expanded(child: InkWell(onTap: () => fun("7"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("7",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("8"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("8",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("9"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("9",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        A = R;
                        R = "";
                        T = 3;
                      });
                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("*",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                  ],),
                ),Container(
                  child: Row(children: [
                    Expanded(child: InkWell(onTap: () => fun("4"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("4",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("5"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("5",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("6"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("6",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        A = R;
                        R = "";
                        T = 2;
                      });
                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("-",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                  ],),
                ),Container(
                  child: Row(children: [
                    Expanded(child: InkWell(onTap: () => fun("1"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("1",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("2"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("2",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("3"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("3",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        A = R;
                        R = "";
                        T = 1;
                      });
                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("+",style: TextStyle(color: Colors.red,fontSize: 30),),)),),
                  ],),
                ),Container(margin: EdgeInsets.only(bottom: 50),
                  child: Row(children: [
                    Expanded(child: InkWell(onTap: () => fun("00"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("00",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(onTap: () => fun("0"),child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("0",style: TextStyle(color: Colors.white,fontSize: 30),),)),),
                    Expanded(child: InkWell(child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text(".",style: TextStyle(color: Colors.red,fontSize: 40),),)),),
                    Expanded(child: InkWell(onTap: () {
                      setState(() {
                        B = R;

                        int a = int.parse(A);
                        int b = int.parse(B);

                        int C = 0;

                        if(T == 1)
                        {

                            C = a+b;

                        }
                        if(T == 2)
                        {

                          C = a-b;

                        }
                        if(T == 3)
                        {

                          C = a*b;

                        }
                        if(T == 4)
                        {

                          C = a~/b;

                        }
                        R = C.toString();
                      });

                    },child: Container(alignment: Alignment.center,decoration: BoxDecoration(shape: BoxShape.circle),child: Text("=",style: TextStyle(color: Colors.red,fontSize: 40),),)),),
                  ],),
                ),
        ],),
      ),
    ));
  }
  void fun(String K)
  {

    setState(() {
      R=R+K;
    });

  }
}
