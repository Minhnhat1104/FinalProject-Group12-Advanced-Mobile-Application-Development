import 'package:flutter/material.dart';
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
        border: Border.all(color: tdNeonBlue), // Add border
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () {
          onToDoChanged(signupOption);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: tdWhite,
        leading: Radio( // Use Radio instead of Icon
          value: signupOption,
          groupValue: null, // Add your group value here if needed
          onChanged: (value) {
            onToDoChanged(signupOption);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              signupOption.optionText!,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon( 
                  Icons.calendar_today,
                  color: Colors.grey,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Container(
                  margin: const EdgeInsets.only(top: 3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
