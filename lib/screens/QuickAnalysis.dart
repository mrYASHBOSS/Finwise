import 'package:finwise/screens/HomeScreen.dart';
import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

import '../utility/model/trancs.dart';

class QuickAnalysisScreen extends StatefulWidget {
  const QuickAnalysisScreen({Key? key}) : super(key: key);

  @override
  State<QuickAnalysisScreen> createState() => _QuickAnalysisScreenState();
}

class _QuickAnalysisScreenState extends State<QuickAnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    final transactionBox = Hive.box('transactions');
    final List<Transaction> transactions =
        transactionBox.values.toList().cast<Transaction>();

    // Group expenses by date
    Map<String, double> dailyExpenses = {};
    transactions.where((txn) => !txn.isIncome).forEach((txn) {
      String dateKey = DateFormat('yyyy-MM-dd').format(txn.date);
      dailyExpenses.update(dateKey, (value) => value + txn.amount,
          ifAbsent: () => txn.amount);
    });

    // Create spots for graph based on daily expenses
    List<FlSpot> expenseSpots = [];
    List<String> dateLabels = [];
    int index = 0;

    dailyExpenses.forEach((date, amount) {
      expenseSpots.add(FlSpot(index.toDouble(), amount));
      dateLabels.add(date);
      index++;
    });

    // Calculate max expense value for Y-axis limit
    double maxExpense = dailyExpenses.isNotEmpty
        ? dailyExpenses.values.reduce((a, b) => a > b ? a : b)
        : 100;
    double interval =
        (maxExpense / 5).ceilToDouble(); // Dynamic interval for better scaling

    return Scaffold(
      // Padding(
      //   padding: EdgeInsets.all(20),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       GestureDetector(
      //         onTap: () {
      //           Get.back();
      //         },
      //         child: Image.asset(
      //           'assets/images/Ic_back.png',
      //           width: 20,
      //           height: 20,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       Text(
      //         'QuickAnalysis',
      //         style: TextStyle(
      //           color: AppColors.LightGreen,
      //           fontSize: 18,
      //           fontWeight: FontWeight.w600,
      //           fontFamily: 'Poppins',
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Get.to(NotificationPage());
      //         },
      //         child: Container(
      //           height: 30,
      //           width: 30,
      //           child: CircleAvatar(
      //             backgroundColor: AppColors.LightGreen,
      //             child: Image.asset(
      //               'assets/images/bell_icon.png',
      //               width: 20,
      //               height: 20,
      //               fit: BoxFit.contain,
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: AppColors.BackgroundDarkModeAndLetters,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.LightGreen),
          onPressed: () => Get.to(HomeScreen()),
        ),
        title: Text(
          "QuickAnalysis",
          style: TextStyle(color: AppColors.LightGreen),
        ),
      ),
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      if (index >= 0 && index < dateLabels.length) {
                        return Text(
                          DateFormat('MM/dd').format(DateFormat('yyyy-MM-dd')
                              .parse(dateLabels[index])),
                          style: TextStyle(
                              fontSize: 10, color: AppColors.LightGreen),
                          textAlign: TextAlign.center,
                        );
                      }
                      return Text('');
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: interval, // Set dynamic interval for Y-axis
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      return Text('\$${value.toInt()}',
                          style: TextStyle(
                              fontSize: 10, color: AppColors.mainGreen));
                    },
                  ),
                ),
                topTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
              ),
              gridData: FlGridData(
                show: true,
                drawVerticalLine: true,
                horizontalInterval: interval,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.grey.withOpacity(0.5),
                    strokeWidth: 1,
                    dashArray: [5, 5],
                  );
                },
              ),
              lineBarsData: [
                LineChartBarData(
                  spots: expenseSpots,
                  // Set expense data points
                  isCurved: true,
                  color: Colors.redAccent,
                  barWidth: 4,
                  dotData: const FlDotData(show: true),
                  // Show dots on each data point
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.redAccent
                        .withOpacity(0.2), // Light red area under the curve
                  ),
                ),
              ],
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.black.withOpacity(0.3)),
              ),
              minY: 0,
              maxY: maxExpense +
                  (interval * 2), // Add extra space above the highest expense
            ),
          ),
        ),
      ),
    );
  }
}

final pageController = PageController(
  initialPage: 0,
);

class ExpensesChart extends StatefulWidget {
  ExpensesChart({
    Key? key,
  }) : super(key: key);

  @override
  State<ExpensesChart> createState() => _ExpensesChartState();
}

class _ExpensesChartState extends State<ExpensesChart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.fromLTRB(30, 16, 30, 27),
          decoration: BoxDecoration(
            color: AppColors.LightGreen,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Column(
            children: [
              Text(
                "November",
                style: TextStyle(
                  color: AppColors.LettersAndIcons,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 6,
                              height: 70,
                              decoration: BoxDecoration(
                                color: AppColors.mainGreen,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(31)),
                              ),
                            ),
                            SizedBox(width: 6),
                            Container(
                              width: 6,
                              height: 80,
                              decoration: BoxDecoration(
                                color: AppColors.OceanBlueButton,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(31)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 6,
                              height: 80,
                              decoration: BoxDecoration(
                                color: AppColors.mainGreen,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(31)),
                              ),
                            ),
                            SizedBox(width: 6),
                            Container(
                              width: 6,
                              height: 140,
                              decoration: BoxDecoration(
                                color: AppColors.OceanBlueButton,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(31),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 6,
                              height: 30,
                              decoration: BoxDecoration(
                                color: AppColors.mainGreen,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(31),
                                ),
                              ),
                            ),
                            SizedBox(width: 6),
                            Container(
                              width: 6,
                              height: 140,
                              decoration: BoxDecoration(
                                color: AppColors.OceanBlueButton,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(31),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 6,
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.mainGreen,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(31),
                                ),
                              ),
                            ),
                            SizedBox(width: 6),
                            Container(
                              width: 6,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.OceanBlueButton,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(31),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: AppColors.LettersAndIcons,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '  1st\nWeek',
                        style: GoogleFonts.leagueSpartan(
                          color: AppColors.LettersAndIcons,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' 2nd\nWeek',
                        style: GoogleFonts.leagueSpartan(
                          color: AppColors.LettersAndIcons,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' 3rd\nWeek',
                        style: GoogleFonts.leagueSpartan(
                          color: AppColors.LettersAndIcons,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' 4th\nWeek',
                        style: GoogleFonts.leagueSpartan(
                          color: AppColors.LettersAndIcons,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.mainGreen,
              child: IconButton(
                onPressed: () {},
                color: AppColors.mainGreen,
                icon: Icon(
                  FontAwesomeIcons.lessThan,
                  color: AppColors.LightGreen,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundColor: AppColors.mainGreen,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.greaterThan,
                  color: AppColors.LightGreen,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class QuickAnalysisHeader extends StatelessWidget {
  const QuickAnalysisHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            'QuickAnalysis',
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
    );
  }
}

class SavingsGoals extends StatelessWidget {
  const SavingsGoals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    width: 2,
                    color: AppColors.LightGreen,
                  ),
                ),
                child: Image.asset(
                  'assets/images/Ic_white_Car.png',
                  width: 80,
                  height: 80,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Savings \non goals',
                style: TextStyle(
                  color: AppColors.LightGreen,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Container(
            width: 2,
            height: 150,
            color: AppColors.LightGreen,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Ic_white_Salary.png',
                      width: 40, height: 37),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Revenue Last Week',
                        style: TextStyle(
                          color: AppColors.mainGreen,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        '\₹4,000.00',
                        style: GoogleFonts.inter(
                          color: AppColors.LightGreen,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 175,
                height: 2,
                color: AppColors.LightGreen,
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Image.asset('assets/images/Ic_white_Food.png',
                      width: 26, height: 44),
                  SizedBox(width: 23),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Last Week',
                        style: TextStyle(
                          color: AppColors.mainGreen,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        '- \₹100.00',
                        style: GoogleFonts.inter(
                          color: AppColors.BlueButton,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
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
    );
  }
}
