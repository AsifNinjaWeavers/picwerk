import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constant/all_text.dart';

class CustomDialouge{
   static showDialog2 (BuildContext context){
    
    return showDialog(
                  barrierColor: Colors.black38,
             context: context,
             builder: (BuildContext contexta) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 5.0,
          ),
                        child: Dialog(
                          backgroundColor: const Color(0xff1282336),
                          shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0),),),
                         
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 226,
                          width: 500,
                          child: Column(
                            children: [
                              const SizedBox(height: 10,),
                            Center(child: Text(AllText.deleteaccount,style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 24,color: const Color(0xff1FFFFFF)),),),
                            const SizedBox(height: 20,),
                            Text(AllText.deleteaccountdialouge,textAlign: TextAlign.center,style:Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14,color: const Color(0xff1AAAAAA)) ),
                            const SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               SizedBox(
                          height: 50,
                          width: MediaQuery.of(contexta).size.width/3,
                          child: ElevatedButton(
                            onPressed: () => Navigator.of(contexta).pop(),
                            
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(width: 1.0, color: Color(0xff1413857),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0,),),
                                backgroundColor: const Color(0xff1282336),
                                ),
                      
                            child: Text(AllText.cancel,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16 ,color: const Color(0xff19A8ABF)),),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(contexta).size.width/3,
                          child: ElevatedButton(
                            onPressed: () => (){},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                backgroundColor: const Color(0xff1413857)),
                            child: Text(AllText.delete,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16 ,color: const Color(0xffFFFFFF)),),
                          ),
                        ),
                                //  ElevetdButtonWidgetCustom(onpreesed: (){}, widget: Text(AllText.cancel),)
                              ],
                            ),
                            ]
                          ),
                        ),
                                      ),
                      );
}
    );
   }
}