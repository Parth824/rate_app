import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl.dart';
import 'package:rentapp/size_config.dart';

class AlertDialogExpense extends StatefulWidget {
  const AlertDialogExpense({super.key});

  @override
  State<AlertDialogExpense> createState() => _AlertDialogExpenseState();
}

class _AlertDialogExpenseState extends State<AlertDialogExpense> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          "Add Expense",
          style: TextStyle(),
        ),
      ),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: SizeConfig.screenHeight*0.12,
                width: SizeConfig.screenWidth*0.55,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(getProportionateScreenHeight(10),),
                ),
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Icon(Icons.add,color: Colors.grey.shade600,),
                    Text("Add Bill",style: TextStyle(color: Colors.grey.shade600),),
                  ],),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              buildTextFormFieldEmployeeExpense(
                  text: "Name", textInputAction: TextInputAction.next),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              buildTextFormFieldEmployeeExpense(
                  text: "Category", textInputAction: TextInputAction.next),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              buildTextFormFieldEmployeeExpense(
                  text: "Amount", textInputAction: TextInputAction.next),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextFormField(
                controller: _textEditingController,
                onTap: () async {
                  DateTime? newSelectedDate = await showDatePicker(
                    context: context,
                    initialDate:
                        _selectedDate != null ? _selectedDate! : DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2040),
                  );

                  if (newSelectedDate != null) {
                    _selectedDate = newSelectedDate;
                    _textEditingController
                      ..text = DateFormat.yMMMd().format(_selectedDate!)
                      ..selection = TextSelection.fromPosition(TextPosition(
                          offset: _textEditingController.text.length,
                          affinity: TextAffinity.upstream));
                  }
                },
                focusNode: AlwaysDisabledFocusNode(),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(SizeConfig.screenHeight * 0.03),
                  ),
                  hintText: "Date",
                  hintStyle: TextStyle(),
                  labelText: "Date",
                  labelStyle: TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Cancel",
            style: TextStyle(),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Add",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  TextFormField buildTextFormFieldEmployeeExpense(
      {required TextInputAction textInputAction, required String text}) {
    return TextFormField(
      textInputAction: textInputAction,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeConfig.screenHeight * 0.03),
        ),
        hintText: text,
        hintStyle: TextStyle(),
        labelText: text,
        labelStyle: TextStyle(),
      ),
    );
  }
}



class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}