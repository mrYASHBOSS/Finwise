import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({super.key});

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  String dropdownValue ="Transport";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/images/Ic_back.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    'Add Transaction',
                    style: TextStyle(
                      color: AppColors.LightGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(NotificationPage());
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: AppColors.LightGreen,
                        child: Image.asset(
                          'assets/images/bell_icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.LettersAndIcons,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                  child: SingleChildScrollView(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFormField(
                            label: 'Date',
                            child: Container(
                              height: 44,
                              width: 355,
                              child: TextFormField(
                                enableInteractiveSelection: false,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                                  filled: true,
                                  fillColor: AppColors.LightGreen,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                initialValue: 'November 30, 2024',
                              ),
                            ),
                          ),
                          SizedBox(height: 34),
                          _buildFormField(
                            label: 'Category',
                            child: Container(
                              height: 44,
                              width: 355,
                              child: DropdownButtonFormField<String>(
                                dropdownColor: AppColors.LightGreen,
                                style: TextStyle(
                                  color: AppColors.LettersAndIcons,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                                borderRadius: BorderRadius.circular(18),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                                  filled: true,
                                  fillColor:AppColors.LightGreen,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                value: dropdownValue,
                                items: [
                                  DropdownMenuItem(child: Text("Transport"),value: "Transport",),
                                  DropdownMenuItem(child: Text("Food"),value: "Food",),
                                  DropdownMenuItem(child: Text("Groceries"),value: "Groceries",),
                                  DropdownMenuItem(child: Text("Rent"),value: "Rent",),
                                  DropdownMenuItem(child: Text("Gifts"),value: "Gifts",),
                                  DropdownMenuItem(child: Text("Medicine"),value: "Medicine",),
                                  DropdownMenuItem(child: Text("Entertainment"),value: "Entertainment",),
                                  DropdownMenuItem(child: Text("Saving"),value: "Saving",),
                                ],
                                onChanged: (String? value) {
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 28),
                          _buildFormField(
                            label: 'Amount',
                            child: Container(
                              height: 44,
                              width: 355,
                              child: TextFormField(
                                enableInteractiveSelection: false,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                                  filled: true,
                                  fillColor: Color(0xFFDFF7E2),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                initialValue: '\₹2600',
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          _buildFormField(
                            label: 'Expense Title',
                            child: Container(
                              height: 44,
                              width: 355,
                              child: TextFormField(
                                enableInteractiveSelection: false,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                                  filled: true,
                                  fillColor:AppColors.LightGreen,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                initialValue: 'Dinner',
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          _buildFormField(
                            label: 'Message',
                            child: TextFormField(
                              enableInteractiveSelection: false,
                              cursorColor: AppColors.LettersAndIcons,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor:AppColors.LightGreen,
                                hintText: 'Enter Message',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              maxLines: 5,
                            ),
                          ),
                          SizedBox(height: 36),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 45,
                                width: 207,
                                decoration: BoxDecoration(
                                  color: AppColors.mainGreen,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                        color: AppColors.LettersAndIcons,
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildFormField({required String label, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFFF1FFF3),
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        child,
      ],
    );
  }
}
