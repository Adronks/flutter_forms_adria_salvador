import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class formB extends StatelessWidget {
  const formB({super.key});

  @override
  Widget build(BuildContext context) {
    return formB_Pers();
  }
}

class formB_Pers extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adrià Salvador 24/25'), elevation: 0, backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: Padding(
        padding: EdgeInsets.only(
          left: 0.0,
          right: 0.0,
          top: 12.0
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                      label: Text('Pers.', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                      icon: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary, radius: 10, child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white))),
                      onPressed: () {}
                  ),
                  TextButton.icon(
                      label: Text('Contact', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                      icon: CircleAvatar(backgroundColor: Colors.grey, radius: 10, child: Icon(Icons.edit, color: Colors.white, size: 12)),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return formB_Contact();
                            },
                          ),
                        );
                      }
                  ),
                  TextButton.icon(
                      label: Text('Upload', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                      icon: CircleAvatar(backgroundColor: Colors.grey, radius: 10, child: Icon(Icons.check, color: Colors.white, size: 12)),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return formB_Upload();
                            },
                          ),
                        );
                      }
                  ),
                ]
              )
            ),
            Divider(
              indent: 0.0,
              endIndent: 0.0
            ),
            Center(
              child: Text('Personal', style: TextStyle(fontSize: 40))
            ),
            Text('Pulsi "Contact" o pulsi el botó de "Continue".', style: TextStyle(fontSize: 16)),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 12),
              child: Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(Theme.of(context).colorScheme.primary),
                            foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return formB_Contact();
                              },
                            ),
                          );
                        },
                        child: Text('CONTINUE')
                    ),
                    TextButton(
                        child: Text('CANCEL'),
                        onPressed: () {}
                    )
                  ]
              )
            )
          ]
        )
      )
    );
  }
}

class formB_Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Adrià Salvador 24/25'), elevation: 0, backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
        body: Padding(
            padding: EdgeInsets.only(
                left: 0.0,
                right: 0.0,
                top: 12.0
            ),
            child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, bottom: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                                label: Text('Pers.', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary, radius: 10, child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white))),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return formB_Pers();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton.icon(
                                label: Text('Contact', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary, radius: 10, child: Icon(Icons.edit, color: Colors.white, size: 12)),
                                onPressed: () {}
                            ),
                            TextButton.icon(
                                label: Text('Upload', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(backgroundColor: Colors.grey, radius: 10, child: Icon(Icons.check, color: Colors.white, size: 12)),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return formB_Upload();
                                      },
                                    ),
                                  );
                                }
                            ),
                          ]
                      )
                  ),
                  Divider(
                      indent: 0.0,
                      endIndent: 0.0
                  ),
                  Center(
                      child: Text('Contact', style: TextStyle(fontSize: 40))
                  ),
                  Text('Pulsi "Upload" o pulsi el botó de "Continue".', style: TextStyle(fontSize: 16)),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 12),
                      child: Row(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStatePropertyAll<Color>(Theme.of(context).colorScheme.primary),
                                    foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return formB_Upload();
                                      },
                                    ),
                                  );
                                },
                                child: Text('CONTINUE')
                            ),
                            TextButton(
                                child: Text('CANCEL'),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return formB_Pers();
                                      },
                                    ),
                                  );
                                }
                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}

class formB_Upload extends StatefulWidget {
  @override
  State<formB_Upload> createState() => _formB_UploadState();
}

class _formB_UploadState extends State<formB_Upload> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Adrià Salvador 24/25'), elevation: 0, backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.only(
                left: 0.0,
                right: 0.0,
                top: 8.0
            ),
            child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 12, right: 12, bottom: 4),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                                label: Text('Pers.', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary, radius: 10, child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white))),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return formB_Pers();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton.icon(
                                label: Text('Contact', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary, radius: 10, child: Icon(Icons.edit, color: Colors.white, size: 12)),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return formB_Contact();
                                      },
                                    ),
                                  );
                                }
                            ),
                            TextButton.icon(
                                label: Text('Upload', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal)),
                                icon: CircleAvatar(backgroundColor: Theme.of(context).colorScheme.primary, radius: 10, child: Icon(Icons.check, color: Colors.white, size: 12)),
                                onPressed: () {}
                            ),
                          ]
                      )
                  ),
                  Divider(
                      indent: 0.0,
                      endIndent: 0.0
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 12),
                    child:
                      FormBuilder(
                        key: _formKey,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              FormBuilderTextField(
                                name: 'Email',
                                decoration:
                                  InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    hintText: 'Email',
                                    prefixIcon: Icon(Icons.mail),
                                    prefixIconColor: Theme.of(context).colorScheme.primary,
                                    hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: SizedBox(
                                  height: 135,
                                  child: FormBuilderTextField(
                                    name: 'Address',
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      hintText: 'Address',
                                      prefixIcon: Icon(Icons.home_rounded),
                                      prefixIconColor: Theme.of(context).colorScheme.primary,
                                      hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
                                    )
                                  )
                                )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: FormBuilderTextField(
                                    name: 'Mobile',
                                    decoration:
                                    InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        hintText: 'Mobile No',
                                        prefixIcon: Icon(Icons.phone),
                                        prefixIconColor: Theme.of(context).colorScheme.primary,
                                        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)
                                    )
                                )
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: Row(
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor: WidgetStatePropertyAll<Color>(Theme.of(context).colorScheme.primary),
                                              foregroundColor: WidgetStatePropertyAll<Color>(Colors.white)
                                          ),
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
                                          child: Text('CONTINUE')
                                      ),
                                      TextButton(
                                          child: Text('CANCEL'),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) {
                                                  return formB_Contact();
                                                },
                                              ),
                                            );
                                          }
                                      )
                                    ]
                                )
                              )
                            ]
                          )
                        )
                      )
                    )
                ]
            )
        )
    );
  }
}
