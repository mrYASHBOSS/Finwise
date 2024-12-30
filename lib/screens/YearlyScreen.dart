import 'package:finwise/screens/add_transaction_form_daily.dart';
import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import '../utility/model/trancs.dart';

class YearlyScreen extends StatefulWidget {
  const YearlyScreen({super.key});

  @override
  State<YearlyScreen> createState() => _YearlyScreenState();
}

class _YearlyScreenState extends State<YearlyScreen> {
  @override
  Widget build(BuildContext context) {
    final transactionBox = Hive.box('transactions');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddTransactionPageDaily());
        },
        backgroundColor: AppColors.OceanBlueButton,
        child: Icon(
          FontAwesomeIcons.plus,
          color: AppColors.LightGreen,
        ),
      ),
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
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
                    'Yearly Transaction',
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
                child: ValueListenableBuilder(
                  // Listens to changes in the transactions box and rebuilds UI accordingly
                  valueListenable: transactionBox.listenable(),
                  builder: (context, Box box, widget) {
                    // Display message when there are no transactions
                    if (box.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.money_off, // Icon indicating no transactions
                              color: AppColors.LightGreen,
                              size: 70,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'No transactions yet.',
                              style: TextStyle(color: AppColors.LightGreen),
                              // Optionally style this text using theme later
                            ),
                          ],
                        ),
                      );
                    } else {
                      // If transactions exist, display them in a ListView
                      return ListView.builder(
                        padding: EdgeInsets.all(16),
                        itemCount: box.length, // Number of transactions
                        itemBuilder: (context, index) {
                          // Retrieve the transaction at the current index
                          final transaction = box.getAt(index) as Transaction;
                          final isIncome =
                              transaction.isIncome; // Check if it's an income
                          final formattedDate = DateFormat.yMMMd()
                              .format(transaction.date); // Format the date

                          // Display each transaction inside a card
                          return Card(
                            color: AppColors.LightGreen,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            elevation: 3,
                            child: ListTile(
                              leading: Icon(
                                isIncome
                                    ? Icons.arrow_upward
                                    : Icons
                                    .arrow_downward, // Icon depending on transaction type
                                color: isIncome
                                    ? Colors.green
                                    : Colors.red, // Color for income/expense
                              ),
                              title: Text(
                                transaction.category, // Transaction category name
                                style: TextStyle(color: AppColors.LettersAndIcons), // Optional text styling
                              ),
                              subtitle: Text(formattedDate,style: TextStyle(color: AppColors.LettersAndIcons)), // Formatted transaction date
                              trailing: Text(
                                isIncome
                                    ? '+ \$${transaction.amount.toStringAsFixed(2)}' // Display income with plus sign
                                    : '- \$${transaction.amount.toStringAsFixed(2)}', // Display expense with minus sign
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: isIncome
                                      ? Colors.green
                                      : Colors.red, // Color based on transaction type
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildTransactionItem({
  //   required String icon,
  //   required String title,
  //   required String time,
  //   required String amount,
  // }) {
  //   return Row(
  //     children: [
  //       Container(
  //         width: 50,
  //         height: 50,
  //         alignment: Alignment.center,
  //         decoration: BoxDecoration(
  //           color: AppColors.mainGreen,
  //           borderRadius: BorderRadius.circular(16),
  //         ),
  //         child: Image.asset(icon, width: 30, height: 30),
  //       ),
  //       SizedBox(width: 18),
  //       Expanded(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       title,
  //                       style: TextStyle(
  //                         color: AppColors.LightGreen,
  //                         fontSize: 15,
  //                         fontWeight: FontWeight.w500,
  //                         fontFamily: 'Poppins',
  //                       ),
  //                     ),
  //                     Text(
  //                       time,
  //                       style: TextStyle(
  //                         color: Color(0xFF3299FF),
  //                         fontSize: 12,
  //                         fontWeight: FontWeight.w600,
  //                         fontFamily: 'Poppins',
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //                 Text(
  //                   amount,
  //                   style: TextStyle(
  //                     color: AppColors.LightGreen,
  //                     fontSize: 15,
  //                     fontWeight: FontWeight.w500,
  //                     fontFamily: 'Poppins',
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
