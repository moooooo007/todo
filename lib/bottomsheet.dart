import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class bottomsheet extends StatefulWidget {
  @override
  State<bottomsheet> createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  String titletext = "";
  String Description = "";
  LocaleType lang = LocaleType.ar;
  DateTime selectedate = DateTime.now();
final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(10),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "Add New Task",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (text) {
                    text = titletext;
                  },
                  validator: (text){
                    if(text==null||text.isEmpty){
                      return "Enter your Corect Title";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Your Title",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.edit)),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (text) {
                    text = Description;
                  },
                  maxLines: 3,
                  validator: (text){
                    if(text==null||text.isEmpty){
                      return "Enter your Corect Description";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Your Description",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.edit_attributes)),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Select Date:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              textAlign: TextAlign.start,
            ),
            Expanded(
              child: InkWell(
                  onTap: () {
                    showclender();
                  },
                  onDoubleTap: () {
                    selectedate = DateTime.now();
                    setState(() {});
                  },
                  child: Text(
                    "${selectedate.year}/${selectedate.month}/${selectedate.day}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  )),
            ),
            Expanded(
              child: FloatingActionButton(
                onPressed: () {
                  addtodo();
                },
                child: Icon(Icons.save),
                backgroundColor: Colors.green,
                elevation: 6,
                shape: StadiumBorder(
                    side: BorderSide(color: Colors.white, width: 4)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showclender() {
    DatePicker.showDatePicker(context,
        showTitleActions: true,
        minTime: DateTime(2018, 1, 1),
        maxTime: DateTime(2050, 12, 31), onConfirm: (date) {
      selectedate = date;
      setState(() {});
    }, currentTime: selectedate, locale: lang);
  }

  void addtodo() {
  if(!_formkey.currentState!.validate()){}
  }
}
