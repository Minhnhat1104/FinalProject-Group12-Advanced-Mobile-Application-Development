import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';

enum SingingCharacter { only }

class ProfileInputCompany extends StatefulWidget {
  const ProfileInputCompany({super.key});

  @override
  State<ProfileInputCompany> createState() => _ProfileInputCompanyState();
}

class _ProfileInputCompanyState extends State<ProfileInputCompany> {
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  SingingCharacter? _character = SingingCharacter.only;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Center(
                  child: Text(
                'Welcome to Student Hub',
                style: TextStyle(fontSize: 20),
              )),
            ),
            TextFielItem(
                label: "Company name", nameController: companyNameController),
            SizedBox(height: 20),
            TextFielItem(label: "Website", nameController: websiteController),
            SizedBox(height: 20),
            TextFielItem(
              label: "Description",
              nameController: descriptionController,
              maxLines: 3,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 20),
              Text("How many people are in your company"),
              ListTile(
                title: const Text("It's just me"),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.only,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tdNeonBlue,
                        fixedSize: Size(150, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(color: tdWhite, fontSize: 18),
                    )),
                SizedBox(width: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tdNeonBlue,
                        fixedSize: Size(150, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: tdWhite, fontSize: 18),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TextFielItem extends StatelessWidget {
  const TextFielItem(
      {super.key,
      required this.label,
      required this.nameController,
      this.maxLines});

  final String label;
  final TextEditingController nameController;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
        // obscureText: true,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ));
  }
}
