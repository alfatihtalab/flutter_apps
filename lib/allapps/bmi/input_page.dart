import 'package:flutter/material.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inActiveCardColor = Color(0xFF1D1F33);

enum Gender {
  male,
  female,
}
Color inActiveIconColor = Colors.white10;
Color activeIconColor = Colors.red;
Gender selectedGender;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bmi Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: BoxBMI(
                        color: inActiveCardColor,
                        childDesc: ChildDesc(
                            icon: Icon(
                              Icons.person,
                              size: 70.0,
                              color: selectedGender == Gender.male
                                  ? activeIconColor
                                  : inActiveIconColor,
                            ),
                            name: 'men')),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: BoxBMI(
                    color: inActiveCardColor,
                    childDesc: ChildDesc(
                        icon: Icon(
                          Icons.support_agent,
                          size: 70.0,
                          color: selectedGender == Gender.female
                              ? activeIconColor
                              : inActiveIconColor,
                        ),
                        name: 'women'),
                  ),
                )),
              ],
            )),
            Expanded(child: BoxBMI(color: activeCardColor)),
            Expanded(
                child: Row(
              children: [
                Expanded(child: BoxBMI(color: activeCardColor)),
                Expanded(child: BoxBMI(color: activeCardColor)),
              ],
            )),
            Container(
              color: Color(0xFFEB1554),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          ],
        ));
  }
}

class ChildDesc extends StatelessWidget {
  ChildDesc({this.icon, this.name});
  final Icon icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 18.00),
        ),
      ],
    );
  }
}

class BoxBMI extends StatelessWidget {
  BoxBMI({@required this.color, this.childDesc});
  final Color color;
  final Widget childDesc;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: childDesc,
        margin: EdgeInsets.all(12.0),
        height: 200.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20.0)));
  }
}
