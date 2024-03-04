import 'package:flutter/material.dart';
import 'package:student_hub/model/selected_option.dart';
import '../../model/signup_option_model.dart';
import '../../constants/colors.dart';

class SignUpOptionItem extends StatelessWidget {
  final SignUpOption signupOption;
  final Function(SignUpOption) onToDoChanged;

  const SignUpOptionItem({
    Key? key,
    required this.signupOption,
    required this.onToDoChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: tdJordyBlue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.account_box,
                  color: tdCornBlue,
                  size: 30,
                ),
                Spacer(), 
                Radio(
                  value: signupOption,
                  groupValue: SelectedOption.selectedOption,
                  onChanged: (value) {
                    onToDoChanged(signupOption);
                    SelectedOption.selectedOption = signupOption;
                  },
                  fillColor:
                    MaterialStateColor.resolveWith((states) => tdCornBlue), 
                  activeColor: tdCornBlue,
                ),
              ],
            ),
            SizedBox(height: 5), 
            Row(
              children: [
                Expanded(
                  child: Text(
                    signupOption.optionText!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
