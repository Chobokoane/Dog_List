import 'package:dog_api/core/helper/model/dog_model.dart';
import 'package:dog_api/ui/views/widget/plain_text_field.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class FormWidget extends StatefulWidget {

  TextEditingController dogNameController =  TextEditingController();
  TextEditingController descriptionController =  TextEditingController();
  FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() =>  _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

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
                  controller: widget.dogNameController,
                  hint: "Dog's Name",
                  bgColor: lightShadowColor,
                  boarder: true,
                  horizontalPadding: 0,
                  horizontalContentPadding: 16,
                ),
                const SizedBox(height: 10,),
                PlainTextField(
                  controller: widget.descriptionController,
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
                              child: const Text('Save ',style: TextStyle(color: widgetBgColor),),
                              onPressed: () => submit(context),
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
   submit(context) {
     if(widget.descriptionController.text.isEmpty){
       Scaffold.of(context).showSnackBar(
         const SnackBar(
           backgroundColor: secondaryColor,
           content: Text('Enter dog description!', style: TextStyle(color: widgetBgColor)),
         ),
       );
     } else if (widget.dogNameController.text.isEmpty) {
       Scaffold.of(context).showSnackBar(
         const SnackBar(
           backgroundColor: secondaryColor,
           content: Text('Enter dog name!', style: TextStyle(color: widgetBgColor)),
         ),
       );
     } else {
      var newDog = DogModel(widget.dogNameController.text,
          widget.descriptionController.text);
      Navigator.of(context).pop(newDog);
    }
  }
}