import 'package:dog_api/core/helper/model/dog_model.dart';
import 'package:dog_api/ui/views/widget/plain_text_field.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() =>  _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
//  TextEditingController nameController =  TextEditingController();
//  TextEditingController descriptionController =  TextEditingController();
//
//  void submitPup(context) {
//    if (nameController.text.isEmpty) {
//      Scaffold.of(context).showSnackBar(
//        const SnackBar(
//          backgroundColor: textColorBlack,
//          content: Text('You need to enter dog name!', style: TextStyle(color:widgetBgColor)),
//        ),
//      );
//    } else {
//      var newDog =  DogModel(nameController.text,
//          descriptionController.text);
//      Navigator.pushNamed(context, "details");
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return  Scaffold(
//      backgroundColor: widgetBgColor,
//      appBar:  AppBar(
//        title: const Text('Add a new Dog',style: TextStyle(color: widgetBgColor)),
//        backgroundColor: primaryColor,
//        centerTitle: true,
//      ),
//      body:  SingleChildScrollView(
//        child: Container(
//          color: widgetBgColor,
//          child:  Padding(
//            padding: const EdgeInsets.symmetric(
//              vertical: 30.0,
//              horizontal: 32.0,
//            ),
//            child:  Column(
//              children: [
//                PlainTextField(
//                  controller: nameController,
//                  hint: "Dog's Name",
//                  bgColor: lightShadowColor,
//                  boarder: true,
//                  horizontalPadding: 0,
//                  horizontalContentPadding: 16,
//                ),
//                const SizedBox(height: 10,),
//                PlainTextField(
//                  controller: descriptionController,
//                  hint: "Dog's Description",
//                  bgColor: lightShadowColor,
//                  boarder: true,
//                  horizontalPadding: 0,
//                  horizontalContentPadding: 16,
//                ),
//                 const SizedBox(
//                   height:350,
//                 ),
//            SizedBox(
//              width: 200,
//              child: SizedBox(
//                  width: 120,
//                  height: 50,
//                  child: Container(
//                    child: FlatButton(
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(8.0)),
//                        color: primaryColor,
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: const [
//                            Text(
//                              'Submit',
//                              textAlign: TextAlign.center,
//                                style: TextStyle(color: widgetBgColor)
//                            ),
//                          ],
//                        ),
//                      onPressed: () => submitPup(context),),
//                  ))
//            )
// ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
  TextEditingController dogNameController =  TextEditingController();
  TextEditingController descriptionController =  TextEditingController();

  void submitPup(context) {
    if (dogNameController.text.isEmpty) {
      Scaffold.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: secondaryColor,
          content: Text('Enter dog name!', style: TextStyle(color: widgetBgColor)),
        ),
      );
    }else if(descriptionController.text.isEmpty){
      Scaffold.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: secondaryColor,
          content: Text('Enter dog description!', style: TextStyle(color: widgetBgColor)),
        ),
      );
    } else {
      var newDog =  DogModel(dogNameController.text,
          descriptionController.text);
      Widget okButton = TextButton(
        child: const Text("OK"),
        onPressed: () { },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: const Text("My title"),
        content: const Text("This is my message."),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: widgetBgColor,
      appBar:  AppBar(
        title: const Text('Add a new Dog',style: TextStyle(color: widgetBgColor)),
        backgroundColor: primaryColor,
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Container(
          color: widgetBgColor,
          child:  Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 32.0,
            ),
            child:  Column(
              children: [
                PlainTextField(
                  controller: dogNameController,
                  hint: "Dog's Name",
                  bgColor: lightShadowColor,
                  boarder: true,
                  horizontalPadding: 0,
                  horizontalContentPadding: 16,
                ),
                const SizedBox(height: 10,),
                PlainTextField(
                  controller: descriptionController,
                  hint: "Dog's Description",
                  bgColor: lightShadowColor,
                  boarder: true,
                  horizontalPadding: 0,
                  horizontalContentPadding: 16,
                ),
                const SizedBox(
                  height:350,
                ),
                const SizedBox(
                  height:150,
                ),
                SizedBox(
                    width: 200,
                    child: SizedBox(
                        width: 120,
                        height: 50,
                        child:  Builder(
                          builder: (context) {
                            return  RaisedButton(
                              color: primaryColor,
                              child: const Text('Submit ',style: TextStyle(color: widgetBgColor),),
                              onPressed: () => submitPup(context),
                            );
                          },
                        ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}