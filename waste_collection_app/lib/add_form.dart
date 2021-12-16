import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AddFormState();
  }
}
class AddFormState extends State {
//clé permettant d'identifier le formulaire
  final _formKey = GlobalKey<FormState>();
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Type')),
                  validator: ( value)
                  { //on récupère la valeur saisie
                    if (value == null || value.isEmpty) {
                      return 'Please enter the type of waste';
                    }
                    return null;
                  }
                ),

              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    label: Text('Quantity')),
                  validator: ( value)
                  { //on récupère la valeur saisie
                    if (value == null || value.isEmpty) {
                      return 'Please enter the quantity';
                    }
                    return null;
                  }
              ),
              TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text('Price (kg)')),
                  validator: ( value)
                  { //on récupère la valeur saisie
                    if (value == null || value.isEmpty) {
                      return 'Please enter the price';
                    }
                    return null;
                  }
              ),
              TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text('Address')),
                  validator: ( value)
                  { //on récupère la valeur saisie
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Address';
                    }
                    return null;
                  }
              ),
              TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      label: Text('Date')),
                  validator: ( value)
                  { //on récupère la valeur saisie
                    if (value == null || value.isEmpty) {
                      return 'Please enter the date';
                    }
                    return null;
                  }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    child: Text('Reset'),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    onPressed: () {

                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                    child: const Text('Submit'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}