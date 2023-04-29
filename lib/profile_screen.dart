import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xgrid_interview/utils/constant/custom_colors.dart';
import 'package:xgrid_interview/utils/heading_text.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isDarkMode ? Colors.black : Colors.white;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 1.h),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isDarkMode = !isDarkMode;
                        });
                      },
                      icon: Icon(
                        isDarkMode ? Icons.light_mode : Icons.dark_mode_outlined,
                        color: textColor,
                      ),
                    ),
                  ),
                  Container(
                    width: 18.h,
                    height: 18.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isDarkMode? Colors.grey[700]: Colors.black,
                      border: Border.all(
                        color: CustomColor.primaryColor,
                        width: 3.sp,
                      ),
                    ),
                    child: Icon(
                      Icons.person,
                      color: CustomColor.primaryColor,
                      size: 10.h,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  myText(text: "John Doe", color: textColor, size: 20.sp, fontweight: FontWeight.bold),
                  SizedBox(height: 1.h),
                  myText(text: 'johndoe@example.com',fontweight: FontWeight.w300, color: textColor, size: 14.sp,),
                  SizedBox(height: 2.h),
                Container(
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: CustomColor.primaryColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: myText(text:  'Upgrade to PRO')
                  ),
                ),
                SizedBox(height: 2.h),
                  profileDetails(icon: Icons.privacy_tip_outlined, text: "Privacy"),
                  profileDetails(icon: Icons.settings_backup_restore_outlined, text: "Purchases History"),
                  profileDetails(icon: Icons.help_outline, text: "Help and Support"),
                  profileDetails(icon: Icons.settings_rounded, text: "Settings"),
                  profileDetails(icon: Icons.person_add_alt, text: "Invite a friend"),
                  SizedBox(height: 2.h),
              ElevatedButton(
                onPressed: () {
                  // add logout logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: isDarkMode? CustomColor.primaryColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: myText(text: "Logout", color: Colors.white)
                ),
              ),
                  SizedBox(height: 2.h),
              Container(
                height: 0.7.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
                  SizedBox(height: 2.h),

              ],
              ),
            ),
          ),
        ),
      ),
    );
  }



  profileDetails({required IconData icon, required String text,}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: isDarkMode ? Colors.grey[700] : Colors.grey[300],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
          SizedBox(width: 10.0),
          myText(text: text, color:isDarkMode ? Colors.white : Colors.black, fontweight: FontWeight.w600),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
  
}