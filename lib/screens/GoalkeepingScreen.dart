import 'package:finwise/screens/notification.dart';
import 'package:finwise/utility/constants/AppColors.dart';
import 'package:finwise/utility/constants/todo.dart';
import 'package:finwise/utility/constants/todoItem.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalKeepingScreen extends StatefulWidget {
  static const String id = "goal-keeping-screen";

  @override
  State<GoalKeepingScreen> createState() => _GoalKeepingScreenState();
}

class _GoalKeepingScreenState extends State<GoalKeepingScreen> {
  final todoList = ToDo.todoList();
  //List<ToDo> _foundToDo = [];
  final todoController = TextEditingController();

  // @override
  // void initState() {
  //   _foundToDo = todoList;//
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.BackgroundDarkModeAndLetters,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Goal Keeping',
                    style: TextStyle(
                      color: AppColors.LightGreen,
                      fontSize: 20,
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
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     bottom: 10,
            //     left: 20,
            //     right: 20,
            //   ),
            //   child: SearchBox(),
            // ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 10,
                left: 20,
                right: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.LightGreen,
                        borderRadius: BorderRadius.circular(22),
                      ), //
                      child: TextField(
                        controller: todoController,
                        decoration: InputDecoration(
                            hintText: "Add new todo item",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      _addTodo(todoController.text);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColors.mainGreen,
                        borderRadius: BorderRadius.circular(30),
                      ), //
                      child: Text(
                        '+',
                        style: TextStyle(
                            fontSize: 35, color: AppColors.LettersAndIcons),
                      ),
                    ),
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
                  padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Column(
                    children: [
                        todoList.isEmpty ? AddGoal() :
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              child: Text(
                                "Goals",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.LightGreen,
                                ),
                              ),
                            ),
                            for (ToDo todoo in todoList.reversed)
                              TodoItem(
                                todo: todoo,
                                onToDoChanged: _handle,
                                onDeleteItem: _delete,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _runFilter(String enterKeyword) {
  //   List<ToDo> r = [];
  //   if (enterKeyword.isNotEmpty) {
  //     r = todoList;
  //   } else {
  //     r = todoList
  //         .where((element) => element.todoText!
  //             .toLowerCase()
  //             .contains(enterKeyword.toLowerCase()))
  //         .toList();
  //   }
  //   setState(() {
  //     _foundToDo = r;
  //   });
  // }

  void _addTodo(String toDo) {
    setState(() {
      todoController.clear();
      todoList.add(
        ToDo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: toDo,
          subText: "",
        ),
      );
    });
  }

  void _handle(ToDo toDo) {
    setState(() {
      toDo.isDone = !toDo.isDone;
    });
  }

  void _delete(String id) {
    setState(() {
      todoList.removeWhere((element) => element.id == id);
    });
  }

  Widget SearchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.LightGreen,
        borderRadius: BorderRadius.circular(22),
      ), //
      child: TextField(
        //onChanged: (v) => _runFilter(v),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: AppColors.LettersAndIcons,
            size: 20,
          ),
          // Icon
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          // BoxConstraints
          border: InputBorder.none,
          hintText: " Search",
          hintStyle: TextStyle(
            color: AppColors.LettersAndIcons,
          ),
        ),
      ),
    );
  }

  Column AddGoal() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "No Future Goal Right Now",
            style: GoogleFonts.leagueSpartan(
              color: AppColors.LightGreen,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

}
