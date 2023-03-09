import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class alarmpage extends StatefulWidget {
  const alarmpage({super.key});

  @override
  State<alarmpage> createState() => _alarmpageState();
}

// ignore: camel_case_types
class _alarmpageState extends State<alarmpage> {
  bool isOn = false;
  int alarmId = 1;

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 30);

  // show time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((timevalue) {
      setState(() {
        _timeOfDay = timevalue!;
      });
    });
  }

  void firealarm() {
    // ignore: avoid_print
    print("Alarm Fired at${DateTime.now()}");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.red,
            ),
          ),
          child: Center(
            child: Transform.scale(
              scale: 2,
              child: Switch(
                value: isOn,
                onChanged: (value) {
                  setState(() {
                    isOn = value;
                  });
                  if (isOn == true) {
                    AndroidAlarmManager.oneShotAt(
                        DateTime.now(), alarmId, firealarm);
                  } else {
                    AndroidAlarmManager.cancel(alarmId);
                  }
                },
              ),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // display the chosen time
                Text(
                  _timeOfDay.format(context).toString(),
                  style: const TextStyle(fontSize: 50),
                ),

                // button
                MaterialButton(
                  onPressed: _showTimePicker,
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'PICK TIME',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
