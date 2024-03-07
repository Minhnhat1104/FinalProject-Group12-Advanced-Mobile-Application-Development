import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';
import 'package:student_hub/constants/style.dart';
import 'package:student_hub/screens/Dashboard/dashboard_screen.dart';
import 'package:student_hub/widgets/header_nav_widget.dart';

class NotHaveProfile extends StatefulWidget {
  const NotHaveProfile({Key? key}) : super(key: key);

  @override
  _NotHaveProfileState createState() => _NotHaveProfileState();
}

class _NotHaveProfileState extends State<NotHaveProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: APP_PADDING_X),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Build your product with high-skilled student',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tell us about your company and you will be on your way connect with high-skilled students',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 16),
            CompanyForm(formKey: _formKey)
          ],
        ),
      ),
    );
  }
}

class CompanyForm extends StatelessWidget {
  const CompanyForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How many people in your company?',
              style: INPUT_TITLE_STYLE,
              textAlign: TextAlign.left,
            ),
            CompanyPeopleRadio(),
            Text(
              'Company name',
              style: INPUT_TITLE_STYLE,
              textAlign: TextAlign.left,
            ),
            TextFormField(
              // The validator receives the text that the user has entered.
              decoration: inputOutlined('Enter company name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter company name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            Text(
              'Website',
              style: INPUT_TITLE_STYLE,
              textAlign: TextAlign.left,
            ),
            TextFormField(
              decoration: inputOutlined('Enter website'),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter website';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: INPUT_TITLE_STYLE,
              textAlign: TextAlign.left,
            ),
            TextFormField(
              minLines: 3,
              maxLines: 3,
              // The validator receives the text that the user has entered.
              decoration: inputOutlined('Enter description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter description';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: Text(
                    'Contunue',
                    style: TextStyle(color: tdWhite),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationBarApp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tdNeonBlue,
                      fixedSize: Size(200, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ),
          ],
        ));
  }
}

class CompanyPeopleRadio extends StatefulWidget {
  const CompanyPeopleRadio({super.key});

  @override
  State<CompanyPeopleRadio> createState() => _CompanyRadioPeopleState();
}

var companyPeopleOption = {
  1: "It's jus me",
  2: "2-9 employees",
  3: "10-99 employees",
  4: "100-1000 employees",
  5: "More thab 1000 employees",
};

class _CompanyRadioPeopleState extends State<CompanyPeopleRadio> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (var _key in companyPeopleOption.keys)
          ListTile(
            title: Text(companyPeopleOption[_key].toString()),
            contentPadding: EdgeInsets.all(0),
            leading: Radio<int>(
              value: _key,
              groupValue: value,
              onChanged: (int? value) {
                setState(() {
                  value = _key;
                });
              },
            ),
          ),
      ],
    );
  }
}
