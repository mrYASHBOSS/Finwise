import 'package:finwise/utility/constants/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onBoardingList {
  onBoardingList._();

  static int currentPageIndex = 0;

  static List<Widget> pages = [
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
            "January",
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
    ), //January
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
            "February",
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
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 75,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
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
                          height: 34,
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
                          height: 98,
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
                          height: 89,
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
    ), //February
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
            "March",
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
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 6,
                          height: 90,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 90,
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
                          height: 78,
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
                          height: 62,
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
                          height: 50,
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
    ), //March
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
            "April",
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
    ), //April
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
            "May",
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
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 6,
                          height: 120,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 10,
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
                          height: 39,
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
                          height: 32,
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
    ), //May
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
            "June",
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
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 44,
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
                          height: 47,
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
                          height: 120,
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
    ), //June
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
            "July",
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
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 6,
                          height: 90,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 90,
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
                          height: 78,
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
                          height: 62,
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
                          height: 50,
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
    ), //July
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
            "August",
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
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 44,
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
                          height: 47,
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
                          height: 120,
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
    ), //August
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
            "September",
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
                          height: 20,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 44,
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
                          height: 47,
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
                          height: 120,
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
    ), //September
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
            "October",
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
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
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
    ), //October
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
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 75,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
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
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
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
                          height: 34,
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
                          height: 98,
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
                          height: 89,
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
    ), //November
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
            "December",
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
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 80,
                          decoration: BoxDecoration(
                            color: AppColors.OceanBlueButton,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 6,
                          height: 120,
                          decoration: BoxDecoration(
                            color: AppColors.mainGreen,
                            borderRadius:
                            BorderRadius.vertical(top: Radius.circular(31)),
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          width: 6,
                          height: 10,
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
                          height: 39,
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
                          height: 32,
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
    ), //December
  ];
}
