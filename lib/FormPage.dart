import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';

import 'CustomFormField.dart';
import 'CustomImageFormField.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);
  @override
  _FormPageState createState() => _FormPageState();
}
class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomFormField(
                hintText: 'User Name',
              ),

              CustomFormField(
                hintText: 'Score',
              ),

              CustomImageFormField(
                validator: (val) {
                  if (val == null) return 'Pick a picture';
                },
                onChanged: (_file) {},
              ),

              ElevatedButton(
                onPressed: () {
                _formKey.currentState!.validate();
                   
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}