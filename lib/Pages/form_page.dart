
import 'package:code4/Pages/student.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  String? selectedGender;
  String? selectedAge;

  List genders = ['Female', 'Male'];
  List age = ['22', '21'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  labelText: "Name"
              ),
              validator: (value) {
                return (value == '') ? 'Please enter name' : null;
              },
            ),

            const SizedBox(height: 20),
            TextFormField(
              controller: birthdateController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  labelText: "Birthdate"
              ),
              validator: (value) {
                return (value == '') ? 'Please enter  birthday' : null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: addressController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  labelText: "Address"
              ),
              validator: (value) {
                return (value == '') ? 'Please enter address' : null;
              },
            ),
            const SizedBox(height: 20),
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButtonFormField(
                items: [
                  ...age.map((age) => DropdownMenuItem(
                    value: age,
                    child: Text(age),
                  ))
                ],
                value: selectedAge,
                decoration: const InputDecoration(
                  hintText: "Select your Age",
                  labelText: "Age",
                ),
                validator: (value) {
                  return value == null ? 'Please Select  Age' : null;
                },
                onChanged: (value) {
                  setState(() {
                    selectedAge = value as String;
                  });
                },
              ),
            ),

            const SizedBox(height: 20),
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButtonFormField(
                  items: [
                    ...genders.map((gender) => DropdownMenuItem(
                      value: gender,
                      child: Text(gender),
                    ))
                  ],
                  value: selectedGender,
                  decoration: const InputDecoration(
                    labelText: "Gender",
                  ),
                  validator: (value){
                    return value == null ? 'Please Select Gender' : null;
                  },
                  onChanged: (value){
                    setState(() {
                      selectedGender = value as String;
                    });

                  }
              ),
            ),

            const SizedBox(height: 40),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      Student newstudentlist = Student(
                          name: nameController.text,
                          birthday: birthdateController.text,
                          gender: selectedGender,
                          age: selectedAge,
                          address: addressController.text
                      );
                      Navigator.pop(context, newstudentlist);

                      // Save to database
                    }
                  },
                  child: const Text('Submit')
              ),
            )
          ],
        ),
      ),
    );
  }
}
