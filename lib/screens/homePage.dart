
import 'package:finwise/screens/DailyScreen.dart';
import 'package:finwise/screens/MonthlyScreen.dart';
import 'package:finwise/screens/QuickAnalysis.dart';
import 'package:finwise/screens/WeeklyScreen.dart';
import 'package:finwise/screens/YearlyScreen.dart';
import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20, left: 20,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Welcome Back',
                          style: TextStyle(
                            color: AppColors.LightGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
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
                SizedBox(
                  height: 30,
                ),
                BalanceSection(),
                SizedBox(
                  height: 30,
                ),
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
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SavingsGoalCard(
                    //   revenue: 4000,
                    //   foodExpense: 100,
                    // ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Transaction",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: AppColors.LightGreen),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  DailyScreen(),
                                );
                              },
                              child: NewWidget(
                                title: 'Daily',
                                imageUrl: "assets/images/Ic_daily.png",
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  YearlyScreen(),
                                );
                              },
                              child: NewWidget(
                                title: "Yearly",
                                imageUrl: "assets/images/Ic_yearly.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  WeeklyScreen(),
                                );
                              },
                              child: NewWidget(
                                title: 'Weekly',
                                imageUrl: "assets/images/Ic_weekly.png",
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(
                                  QuickAnalysisScreen(),
                                );
                              },
                              child: NewWidget(
                                title: 'Quickly\nAnalysis',
                                imageUrl: "assets/images/Ic_analytics.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 24),
                        GestureDetector(
                          onTap: () {
                            Get.to(
                              MonthlyScreen(),
                            );
                          },
                          child: NewWidget(
                            title: "Monthly",
                            imageUrl: "assets/images/Ic_monthly.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String title, imageUrl;

  const NewWidget({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.mainGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            imageUrl,
            height: 45,
            width: 45,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 12, color: AppColors.LightGreen),
        ),
      ],
    );
  }
}

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBalanceItem('₹7,783.00', "assets/images/Ic_Income.png",
                AppColors.LightGreen, "Total Balance"),
            Container(
              width: 1,
              height: 42,
              color: Color(0xFFDFF7E2),
            ),
            _buildBalanceItem('-₹1,187.40', 'assets/images/Ic_Expense.png',
                AppColors.BlueButton, "Total Expense"),
          ],
        ),
      ],
    );
  }

  Widget _buildBalanceItem(
      String amount, String iconUrl, Color textColor, String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              iconUrl,
              width: 12,
              height: 12,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 12,
                  color: AppColors.LightGreen,
                  fontFamily: "Poppins"),
            )
          ],
        ),
        Text(
          amount,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}

// class TransactionList extends StatelessWidget {
//   const TransactionList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildTransactionItem(
//               'Daily',
//               'assets/images/Ic_Salary.png',
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             _buildTransactionItem(
//               'Yearly',
//               'assets/images/Ic_Salary.png',
//             ),
//           ],
//         ),
//         SizedBox(width: 24),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildTransactionItem(
//               'Weekly',
//               'assets/images/Ic_Salary.png',
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             _buildTransactionItem(
//               title: 'Quickly Analysis',
//               iconUrl:  FontAwesomeIcons.magnifyingGlassChart,
//               GotoPage: "QuickAnalysisScreen"
//             ),
//           ],
//         ),
//         SizedBox(width: 24),
//         _buildTransactionItem(
//         title: "Monthly",
//           GotoPage: "MonthlyPage",
//           iconUrl: FontAwesomeIcons.
//         ),
//       ],
//     );
//   }
//
//   Widget _buildTransactionItem({
//     required String title,GotoPage,
//     required Icon iconUrl,
//   }) {
//     return Column(
//       children: [
//         Container(
//           width: 80,
//           height: 80,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             color: AppColors.mainGreen,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: IconButton(
//             onPressed: () {
//               Get.to(GotoPage);
//             },
//             icon: iconUrl,
//             color: AppColors.LettersAndIcons,
//           ),
//         ),
//         Text(
//           title,
//           style: TextStyle(
//               fontFamily: 'Poppins', fontSize: 16, color: AppColors.LightGreen),
//         ),
//       ],
//     );
//   }
// }

class SavingsGoalCard extends StatelessWidget {
  final double revenue;
  final double foodExpense;

  const SavingsGoalCard({
    Key? key,
    required this.revenue,
    required this.foodExpense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.mainGreen,
      ),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.LightGreen,
                    width: 2.325,
                  ),
                ),
                child: Image.asset(
                  'assets/images/Ic_Car.png',
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Savings \non goals',
                style: TextStyle(
                  color: AppColors.LettersAndIcons,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Container(
            width: 2,
            color: AppColors.LightGreen,
            height: 150,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Ic_Salary.png',
                        width: 33,
                        height: 30,
                      ),
                      SizedBox(width: 11),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Revenue Last Week',
                            style: TextStyle(
                              color: AppColors.LettersAndIcons,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            '\₹${revenue.toStringAsFixed(2)}',
                            style: GoogleFonts.inter(
                              color: AppColors.LettersAndIcons,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: 175,
                    height: 2,
                    color: AppColors.LightGreen,
                  ),
                  SizedBox(height: 18),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/Ic_Food.png',
                            width: 21,
                            height: 36,
                          ),
                          SizedBox(width: 17),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Food Last Week',
                                style: TextStyle(
                                  color: AppColors.LettersAndIcons,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                '-\₹${foodExpense.toStringAsFixed(2)}',
                                style: GoogleFonts.inter(
                                  color: AppColors.OceanBlueButton,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class SavingsGoalSection extends StatelessWidget {
//   const SavingsGoalSection({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppColors.mainGreen,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       height: 152,
//       width: 357,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: 80,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                   border: Border.all(
//                     color: AppColors.LightGreen,
//                   ),
//                 ),
//                 child: Image.asset(
//                   'assets/images/Ic_white_Car.png',
//                   width: 80,
//                   height: 80,
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 'Savings \non goals',
//                 style: TextStyle(
//                   color: AppColors.LightGreen,
//                   fontSize: 15,
//                   fontWeight: FontWeight.w500,
//                   fontFamily: 'Poppins',
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             width: 2,
//             height: 150,
//             color: AppColors.LightGreen,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Image.asset('assets/images/Ic_white_Salary.png',
//                       width: 40, height: 37),
//                   SizedBox(width: 16),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Revenue Last Week',
//                         style: TextStyle(
//                           color: AppColors.mainGreen,
//                           fontSize: 12,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 14),
//                       Text(
//                         '\₹4,000.00',
//                         style: GoogleFonts.inter(
//                           color: AppColors.LightGreen,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),

//               SizedBox(height: 18),
//               Row(
//                 children: [
//                   Image.asset('assets/images/Ic_white_Food.png',
//                       width: 26, height: 44),
//                   SizedBox(width: 23),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Food Last Week',
//                         style: TextStyle(
//                           color: AppColors.mainGreen,
//                           fontSize: 12,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       SizedBox(height: 13),
//                       Text(
//                         '- \₹100.00',
//                         style: GoogleFonts.inter(
//                           color: AppColors.BlueButton,
//                           fontSize: 17,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildInfoRow(String label, String amount, String iconUrl,
//       {bool isNegative = false}) {
//     return Row(
//       children: [
//         Image.asset(
//           iconUrl,
//           width: 33,
//           height: 30,
//         ),
//         SizedBox(width: 11),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               label,
//               style: TextStyle(
//                 color: Color(0xFF052224),
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//             Text(
//               amount,
//               style: TextStyle(
//                 color: isNegative ? Color(0xFF0068FF) : Color(0xFF052224),
//                 fontSize: 15,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: 'Inter',
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// SizedBox(width: 15),
// Expanded(
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         title,
//         style: TextStyle(
//           color: Color(0xFFF1FFF3),
//           fontSize: 15,
//           fontWeight: FontWeight.w500,
//           fontFamily: 'Poppins',
//         ),
//       ),
//       Text(
//         date,
//         style: TextStyle(
//           color: Color(0xFF3299FF),
//           fontSize: 12,
//           fontWeight: FontWeight.w600,
//           fontFamily: 'Poppins',
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   width: 1,
//   height: 36,
//   color: Color(0xFF00D09E),
// ),
// const SizedBox(width: 20),
// Text(
//   title,
//   style: TextStyle(
//     color: Color(0xFFF1FFF3),
//     fontSize: 13,
//     fontWeight: FontWeight.w300,
//     fontFamily: 'Poppins',
//   ),
// ),
// const SizedBox(width: 20),
// Container(
//   width: 1,
//   height: 36,
//   color: Color(0xFF00D09E),
// ),
// const SizedBox(width: 20),
// Text(
//   amount,
//   style: TextStyle(
//     color: isPositive ? Color(0xFFF1FFF3) : Color(0xFF3299FF),
//     fontSize: 15,
//     fontWeight: FontWeight.w500,
//     fontFamily: 'Poppins',
//   ),
// ),
