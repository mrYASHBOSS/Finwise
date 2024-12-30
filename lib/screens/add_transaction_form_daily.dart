import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

import '../utility/model/trancs.dart';

class AddTransactionPageDaily extends StatefulWidget {
  const AddTransactionPageDaily({super.key});

  @override
  State<AddTransactionPageDaily> createState() =>
      _AddTransactionPageDailyState();
}

class _AddTransactionPageDailyState extends State<AddTransactionPageDaily> {
  // String dropdownValue ="Transport";
  // final txtMoney = TextEditingController();
  // final txtTitle = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  String _category = 'Food'; // Default category
  double _amount = 0.0;
  bool _isIncome = false;
  DateTime _selectedDate = DateTime.now(); // Default date as current date
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
                  child: Form(
                    key: _formKey, // Form with validation
                    child: ListView(
                      children: [
                        // Input for transaction amount
                        TextFormField(
                          cursorColor: AppColors.LightGreen,
                          style: TextStyle(color: AppColors.LightGreen,fontSize: 18,fontFamily: "Poppins",),
                          decoration: InputDecoration(
                            labelText: 'Amount',
                            labelStyle: TextStyle(color: AppColors.LightGreen,),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            prefixIcon: Icon(
                              FontAwesomeIcons.indianRupeeSign,
                              color: AppColors.mainGreen,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (value) => _amount = double.parse(value!),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an amount'; // Validate amount
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16),

                        // Dropdown for selecting category
                        DropdownButtonFormField<String>(
                          borderRadius: BorderRadius.circular(18),
                          iconEnabledColor: AppColors.LightGreen,
                          iconDisabledColor: AppColors.LightGreen,
                          dropdownColor: AppColors.BackgroundDarkModeAndLetters,
                          value: _category,
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontFamily: "Poppins",
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Category',
                            labelStyle: TextStyle(color: AppColors.LightGreen),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.LightGreen)),
                            prefixIcon: Icon(
                              Icons.category_outlined,
                              color: AppColors.mainGreen,
                            ),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              _category = newValue!;
                            });
                          },
                          items: [
                            DropdownMenuItem(child: Text("Transport"),value: "Transport",),
                            DropdownMenuItem(child: Text("Salary"),value: "Salary",),
                            DropdownMenuItem(child: Text("Food"),value: "Food",),
                            DropdownMenuItem(child: Text("Groceries"),value: "Groceries",),
                            DropdownMenuItem(child: Text("Rent"),value: "Rent",),
                            DropdownMenuItem(child: Text("Medicine"),value: "Medicine",),
                            DropdownMenuItem(child: Text("Entertainment"),value: "Entertainment",),
                            DropdownMenuItem(child: Text("Saving"),value: "Saving",),
                          ],
                        ),
                        SizedBox(height: 16),

                        // Date picker for transaction date
                        ListTile(
                          title: Text(
                            'Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate)}',
                            style: TextStyle(
                              color: AppColors.LightGreen,
                              fontFamily: "Poppins",
                              fontSize: 18,
                            ),
                          ),
                          trailing: Icon(Icons.calendar_today,color: AppColors.LightGreen,),
                          onTap: () =>
                              _selectDate(context), // Opens date picker
                        ),
                        SizedBox(height: 16),

                        // Switch for Income/Expense selection
                        SwitchListTile(
                          activeColor: AppColors.mainGreen,
                          inactiveTrackColor: AppColors.LettersAndIcons,
                          inactiveThumbColor: AppColors.LightGreen,
                          trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                            if (states.contains(WidgetState.selected)) {
                              return Colors.transparent;
                            }

                            return AppColors.LightGreen; // Use the default color.
                          }),
                          title: Text('Income',style: TextStyle(color: AppColors.LightGreen),),
                          value: _isIncome,
                          onChanged: (bool value) {
                            setState(() {
                              _isIncome = value;
                            });
                          },
                          secondary: Icon(
                            _isIncome
                                ? Icons.arrow_upward
                                : Icons.arrow_downward,
                            color: _isIncome ? Colors.green : Colors.red,
                          ),
                        ),
                        SizedBox(height: 16),

                        // Button to add the transaction
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save(); // Save form data

                                // Create and save transaction
                                final transaction = Transaction(
                                  category: _category,
                                  amount: _amount,
                                  isIncome: _isIncome,
                                  date: _selectedDate,
                                );
                                Hive.box('transactions').add(transaction);

                                // Reset form after submission
                                _category = 'Food';
                                _amount = 0.0;
                                _isIncome = false;
                                _selectedDate = DateTime.now();
                                Get.back();
                                setState(() {});
                              }
                            },
                            child: Container(
                              height: 45,
                              width: 215,
                              decoration: BoxDecoration(
                                color: AppColors.mainGreen,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "Add Transaction",
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
                  // SingleChildScrollView(
                  //   child: Form(
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         _buildFormField(
                  //           label: 'Date',
                  //           child: Container(
                  //             height: 44,
                  //             width: 355,
                  //             child: TextFormField(
                  //               enableInteractiveSelection: false,
                  //               decoration: InputDecoration(
                  //                 contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                  //                 filled: true,
                  //                 fillColor: AppColors.LightGreen,
                  //                 border: OutlineInputBorder(
                  //                   borderRadius: BorderRadius.circular(18),
                  //                   borderSide: BorderSide.none,
                  //                 ),
                  //               ),
                  //               initialValue: 'November 30, 2024',
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(height: 34),
                  //         _buildFormField(
                  //           label: 'Category',
                  //           child: Container(
                  //             height: 44,
                  //             width: 355,
                  //             child: DropdownButtonFormField<String>(
                  //               dropdownColor: AppColors.LightGreen,
                  //               style: TextStyle(
                  //                 color: AppColors.LettersAndIcons,
                  //                 fontFamily: "Poppins",
                  //                 fontWeight: FontWeight.w500,
                  //                 fontSize: 15,
                  //               ),
                  //               borderRadius: BorderRadius.circular(18),
                  //               decoration: InputDecoration(
                  //                 contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                  //                 filled: true,
                  //                 fillColor:AppColors.LightGreen,
                  //                 border: OutlineInputBorder(
                  //                   borderRadius: BorderRadius.circular(18),
                  //                   borderSide: BorderSide.none,
                  //                 ),
                  //               ),
                  //               value: dropdownValue,
                  //               items: [
                  //                 DropdownMenuItem(child: Text("Transport"),value: "Transport",),
                  //                 DropdownMenuItem(child: Text("Food"),value: "Food",),
                  //                 DropdownMenuItem(child: Text("Groceries"),value: "Groceries",),
                  //                 DropdownMenuItem(child: Text("Rent"),value: "Rent",),
                  //                 DropdownMenuItem(child: Text("Gifts"),value: "Gifts",),
                  //                 DropdownMenuItem(child: Text("Medicine"),value: "Medicine",),
                  //                 DropdownMenuItem(child: Text("Entertainment"),value: "Entertainment",),
                  //                 DropdownMenuItem(child: Text("Saving"),value: "Saving",),
                  //               ],
                  //               onChanged: (String? value) {
                  //                 setState(() {
                  //                   dropdownValue = value!;
                  //                 });
                  //               },
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(height: 28),
                  //         _buildFormField(
                  //           label: 'Amount',
                  //           child: Container(
                  //             height: 44,
                  //             width: 355,
                  //             child: TextFormField(
                  //               controller: txtMoney,
                  //               enableInteractiveSelection: false,
                  //               keyboardType: TextInputType.numberWithOptions(decimal: false,signed: true),
                  //               decoration: InputDecoration(
                  //                 hintText: 'Ex: ₹2400/-',
                  //                 hintStyle: TextStyle(color: AppColors.LettersAndIcons,fontSize: 16,),
                  //
                  //                 contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                  //                 filled: true,
                  //                 fillColor: Color(0xFFDFF7E2),
                  //                 border: OutlineInputBorder(
                  //                   borderRadius: BorderRadius.circular(18),
                  //                   borderSide: BorderSide.none,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(height: 30),
                  //         _buildFormField(
                  //           label: 'Expense Title',
                  //           child: Container(
                  //             height: 44,
                  //             width: 355,
                  //             child: TextFormField(
                  //               controller: txtTitle,
                  //               enableInteractiveSelection: false,
                  //               decoration: InputDecoration(
                  //                 hintText: 'Ex: Dinner',
                  //                 hintStyle: TextStyle(color: AppColors.LettersAndIcons,fontSize: 16,),
                  //                 contentPadding: EdgeInsets.symmetric(horizontal: 22, vertical: 4),
                  //                 filled: true,
                  //                 fillColor:AppColors.LightGreen,
                  //                 border: OutlineInputBorder(
                  //                   borderRadius: BorderRadius.circular(18),
                  //                   borderSide: BorderSide.none,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(height: 30),
                  //         _buildFormField(
                  //           label: 'Message',
                  //           child: TextFormField(
                  //             enableInteractiveSelection: false,
                  //             cursorColor: AppColors.LettersAndIcons,
                  //             decoration: InputDecoration(
                  //               filled: true,
                  //               fillColor:AppColors.LightGreen,
                  //               hintText: 'Enter Message',
                  //               border: OutlineInputBorder(
                  //                 borderRadius: BorderRadius.circular(18),
                  //                 borderSide: BorderSide.none,
                  //               ),
                  //             ),
                  //             maxLines: 5,
                  //           ),
                  //         ),
                  //         SizedBox(height: 36),
                  //         Center(
                  //           child: GestureDetector(
                  //             onTap: () {
                  //               String Amt = txtMoney.text;
                  //               if(txtTitle.text.isNotEmpty && txtMoney.text.isNotEmpty)
                  //                 {
                  //                   CollectionReference collRef = FirebaseFirestore.instance.collection('daily');
                  //                   collRef.add({
                  //                     'amount' : txtMoney.text,
                  //                     'title' : txtTitle.text,
                  //                   });
                  //                   Navigator.pop(context,Amt);
                  //                   //Amt = "";
                  //                   //Get.toNamed(DailyScreen(txtAmt: "",) as String);
                  //                 }else{
                  //                 customAlertBox(context,"Please Fill All Filed.");
                  //               }
                  //             },
                  //             child: Container(
                  //               height: 45,
                  //               width: 207,
                  //               decoration: BoxDecoration(
                  //                 color: AppColors.mainGreen,
                  //                 borderRadius: BorderRadius.circular(50),
                  //               ),
                  //               child: Center(
                  //                 child: Text(
                  //                   "Save",
                  //                   style: TextStyle(
                  //                       color: AppColors.LettersAndIcons,
                  //                       fontSize: 20,
                  //                       fontFamily: "Poppins",
                  //                       fontWeight: FontWeight.w600),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Date picker function
  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked; // Update selected date
      });
    }
  }
// Widget _buildFormField({required String label, required Widget child}) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         label,
//         style: TextStyle(
//           color: Color(0xFFF1FFF3),
//           fontSize: 15,
//           fontFamily: 'Poppins',
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       SizedBox(height: 8),
//       child,
//     ],
//   );
// }
}
