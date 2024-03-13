import 'package:ecom_ui/utils/colors.dart';
import 'package:ecom_ui/widgets/responsive.dart';
import 'package:ecom_ui/widgets/textField.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.colorWhiteHighEmp,
      body: Center(
        child: Responsive(
          mobile: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: size.width/24),
            child: signupForm()
          ),
          tablet: Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: size.width/6),
            child: signupForm()
          ),
        )
      ),
    );
  }

  Widget signupForm(){
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height/16,),
        Icon(Icons.arrow_back_ios_new, size: size.height/32,),
        SizedBox(height: size.height/24,),
        Text("Sign up",style: TextStyle(fontSize: size.height/24),),
        SizedBox(height: size.height/24,),
        CustomTextField(labelText: 'Username'),
        SizedBox(height: size.height/48,),
        CustomTextField(labelText: 'Email'),
        SizedBox(height: size.height/48,),
        CustomTextField(labelText: 'Password'),
        SizedBox(height: size.height/48,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Already have an account? ", style: TextStyle(fontSize: size.height/72),),
            Icon(Icons.arrow_forward, size: size.height/64,)
          ],
        ),
        SizedBox(height: size.height/24,),
        Container(
          width: double.maxFinite,
          height: size.height/16,
          decoration: BoxDecoration(
            color: AppColor.colorPrimary,
            borderRadius: BorderRadius.circular(size.height/32),
          ),
          child: Center(
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontSize: size.height/40
              ),
            ),
          ),
        )
      ],
    );
  }


}
