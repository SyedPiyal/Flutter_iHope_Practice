import 'package:flutter/material.dart';

class EditAccountInfo extends StatefulWidget {
  const EditAccountInfo({Key? key}) : super(key: key);

  @override
  _EditAccountInfoState createState() => _EditAccountInfoState();
}

class _EditAccountInfoState extends State<EditAccountInfo> {
  TextEditingController iHopeIdController =
      TextEditingController(text: '1092302');
  TextEditingController usernameController =
      TextEditingController(text: 'sadiq');
  TextEditingController firstNameController =
      TextEditingController(text: 'Sadiq Md');
  TextEditingController lastNameController =
      TextEditingController(text: 'Asif');
  TextEditingController dobController =
      TextEditingController(text: 'Feb 12, 1994');
  TextEditingController genderController = TextEditingController(text: 'Male');
  TextEditingController phoneNumberController =
      TextEditingController(text: '01671234123');
  TextEditingController emailController =
      TextEditingController(text: 'sadiq@gmail.com');
  TextEditingController cityController = TextEditingController(text: 'Dhaka');
  TextEditingController zoneController =
      TextEditingController(text: 'Dhanmondi');
  TextEditingController addressController =
      TextEditingController(text: '13 Kazi nazrul avenue');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Account Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Personal",
                style: TextStyle(color: Color(0xff808D9E), fontSize: 16),
              ),
              TextFormField(
                controller: iHopeIdController,
                decoration: const InputDecoration(
                  labelText: 'iHope ID',
                  filled: true,
                  fillColor: Color(0x0ff89651),
                ),
              ),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
              ),
              TextFormField(
                controller: firstNameController,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextFormField(
                controller: lastNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
              ),
              Row(
                children: [
                  const Text('Gender', style: TextStyle(fontSize: 16)),
                  Radio(
                    value: 'Male',
                    groupValue: genderController.text,
                    onChanged: (value) {
                      setState(() {
                        genderController.text = value as String;
                      });
                    },
                  ),
                  const Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: genderController.text,
                    onChanged: (value) {
                      setState(() {
                        genderController.text = value as String;
                      });
                    },
                  ),
                  const Text('Female'),
                ],
              ),
              TextFormField(
                controller: dobController,
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );

                  if (pickedDate != null && pickedDate != DateTime.now()) {
                    setState(() {
                      dobController.text =
                          pickedDate.toLocal().toString().split(' ')[0];
                    });
                  }
                },
              ),
              TextFormField(
                controller: phoneNumberController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.mail),
                  ),

                  //to remove the both side space
                  prefixIconConstraints: BoxConstraints(minWidth: 0),
                ),
              ),
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(labelText: 'City'),
              ),
              TextFormField(
                controller: zoneController,
                decoration: const InputDecoration(labelText: 'Zone'),
              ),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity, // Make the button width full
                child: ElevatedButton(
                  onPressed: () {
                    // Implement save functionality here

                    print('Save button pressed');
                  },
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
