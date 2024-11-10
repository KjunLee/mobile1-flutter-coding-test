import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';
import 'package:rs_flutter_test/notifiers/switch_demo_screen_notifier.dart';

const Color _kTextColor = Colors.black;
const Color _kAppBarColor = Color.fromRGBO(36, 41, 46, 1);
const Color _kScaffoldBgColor = Colors.white;

const Color _kDarkTextColor = Colors.white;
const Color _kDarkAppBarColor = Color.fromRGBO(22, 27, 34, 1);
const Color _kDarkScaffoldBgColor = Color(0xFF0D1117);

class SwitchDemoScreen extends StatelessWidget {
  const SwitchDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var notifier = context.watch<SwitchDemoScreenNotifier>();
    var isDarkMode = notifier.status7;
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
          bodyLarge:
              TextStyle(color: isDarkMode ? _kDarkTextColor : _kTextColor),
          bodyMedium:
              TextStyle(color: isDarkMode ? _kDarkTextColor : _kTextColor),
        ),
      ),
      child: Scaffold(
        backgroundColor: isDarkMode ? _kDarkScaffoldBgColor : _kScaffoldBgColor,
        appBar: AppBar(
          backgroundColor: isDarkMode ? _kDarkAppBarColor : _kAppBarColor,
          title: Text(
            "FlutterSwitch Demo",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            FlutterSwitch(
              value: notifier.isSwitchOn,
              onToggle: (value) => notifier.isSwitchOn = value,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Default"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      value: notifier.status1,
                      onToggle: (value) => notifier.status1 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Value: ${notifier.status1}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Custom Colors and Borders"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 100.0,
                      height: 55.0,
                      toggleSize: 45.0,
                      value: notifier.status2,
                      borderRadius: 30.0,
                      padding: 2.0,
                      toggleColor: Color.fromRGBO(225, 225, 225, 1),
                      switchBorder: Border.all(
                        color: Color.fromRGBO(2, 107, 206, 1),
                        width: 6.0,
                      ),
                      toggleBorder: Border.all(
                        color: Color.fromRGBO(2, 107, 206, 1),
                        width: 5.0,
                      ),
                      activeColor: Color.fromRGBO(51, 226, 255, 1),
                      inactiveColor: Colors.black38,
                      onToggle: (value) => notifier.status2 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Value: ${notifier.status2}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("With 'On' and 'Off' text and custom text colors"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      showOnOff: true,
                      activeTextColor: Colors.black,
                      inactiveTextColor: Colors.blue[50]!,
                      value: notifier.status3,
                      onToggle: (value) => notifier.status3 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Value: ${notifier.status3}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Custom size"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 55.0,
                      height: 25.0,
                      valueFontSize: 12.0,
                      toggleSize: 18.0,
                      value: notifier.status4,
                      onToggle: (value) => notifier.status4 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Value: ${notifier.status4}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Custom border radius and padding"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 125.0,
                      height: 55.0,
                      valueFontSize: 25.0,
                      toggleSize: 45.0,
                      value: notifier.status5,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: true,
                      onToggle: (value) => notifier.status5 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Value: ${notifier.status5}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Custom text"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      activeText: "All Good. Negative.",
                      inactiveText: "Under Quarantine.",
                      value: notifier.status6,
                      valueFontSize: 10.0,
                      width: 110,
                      borderRadius: 30.0,
                      showOnOff: true,
                      onToggle: (value) => notifier.status6 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Value: ${notifier.status6}",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Icon in toggle"),
                Text(
                  "Inspired by the colors from Github Dark Mode switch",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 100.0,
                      height: 55.0,
                      toggleSize: 45.0,
                      value: notifier.status7,
                      borderRadius: 30.0,
                      padding: 2.0,
                      activeToggleColor: Color(0xFF6E40C9),
                      inactiveToggleColor: Color(0xFF2F363D),
                      activeSwitchBorder: Border.all(
                        color: Color(0xFF3C1E70),
                        width: 6.0,
                      ),
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xFFD1D5DA),
                        width: 6.0,
                      ),
                      activeColor: Color(0xFF271052),
                      inactiveColor: Colors.white,
                      activeIcon: Icon(
                        Icons.nightlight_round,
                        color: Color(0xFFF8E3A1),
                      ),
                      inactiveIcon: Icon(
                        Icons.wb_sunny,
                        color: Color(0xFFFFDF5D),
                      ),
                      onToggle: (value) => notifier.status7 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("Value: ${notifier.status7}"),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text("Image as toggle icon"),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlutterSwitch(
                      width: 100.0,
                      height: 55.0,
                      toggleSize: 45.0,
                      value: notifier.status8,
                      borderRadius: 30.0,
                      padding: 2.0,
                      activeToggleColor: Color(0xFF0082C8),
                      inactiveToggleColor: Color(0xFF01579B),
                      activeSwitchBorder: Border.all(
                        color: Color(0xFF00D2B8),
                        width: 6.0,
                      ),
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xFF29B6F6),
                        width: 6.0,
                      ),
                      activeColor: Color(0xFF55DDCA),
                      inactiveColor: Color(0xFF54C5F8),
                      activeIcon: Image.network(
                        "https://img2.pngio.com/functional-bits-in-flutter-flutter-community-medium-flutter-png-1000_1000.png",
                      ),
                      inactiveIcon: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png",
                      ),
                      onToggle: (value) => notifier.status8 = value,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text("Value: ${notifier.status8}"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
