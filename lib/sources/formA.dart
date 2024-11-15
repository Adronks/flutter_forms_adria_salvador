import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class formA extends StatefulWidget {
  const formA({super.key});

  @override
  State<formA> createState() => formState();
}

class formState extends State<formA> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adrià Salvador 24/25'), elevation: 0, backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: Padding(
        padding: EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 4.0
        ),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Driving Form',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                    )
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Form example',
                      style: TextStyle(
                        fontSize: 14
                      ),
                    )
                  )
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please provide the speed of the vehicle:',
                    style: TextStyle(
                      fontSize: 18
                    )
                  ),
                ),
                FormBuilderRadioGroup<String>(
                  decoration: const InputDecoration(
                    labelText: 'Please select one option given below',
                    border: InputBorder.none,
                  ),
                  name: 'speed',
                  options: ['Above 40km/s', 'Below 40km/s', '0km/s']
                    .map((option) => FormBuilderFieldOption(
                    value: option,
                    child: Text(option)
                  ))
                    .toList(),
                  orientation: OptionsOrientation.vertical,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter remarks',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: FormBuilderTextField(
                    name: 'remark',
                    decoration: InputDecoration(
                      hintText: 'Enter remarks',
                      border: OutlineInputBorder()
                    )
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please provide the high speed of the vehicle',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  )
                ),
                Align (
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please select one option below',
                    style: TextStyle(
                      fontSize: 12
                    )
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: FormBuilderDropdown<String>(
                    name: 'highspeed',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: ['High', 'Medium', 'Low']
                      .map((option) => DropdownMenuItem(
                      value: option,
                      child: Text(option)
                    ))
                      .toList(),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Please provide the speed of the vehicle past 1 hour',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  )
                ),
                FormBuilderCheckboxGroup<String>(
                  name: 'selectSpeed',
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Please select one or more options below'
                  ),
                  orientation: OptionsOrientation.vertical,
                  options: ['20km/h', '30km/h', '40km/h', '50km/h']
                    .map((option) => FormBuilderFieldOption(
                    value: option
                  ))
                    .toList()
                )
              ],
            ),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _formKey.currentState?.save();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Submission Completed'),
                content: Text(_formKey.currentState!.value.toString()),
                icon: const Icon(Icons.check_circle),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close')
                  )
                ]
              );
            }
          );
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}