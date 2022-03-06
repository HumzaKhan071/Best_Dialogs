import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

class CoolAlerts extends StatefulWidget {
  const CoolAlerts({Key? key}) : super(key: key);

  @override
  State<CoolAlerts> createState() => _CoolAlertsState();
}

class _CoolAlertsState extends State<CoolAlerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  text: 'Transaction completed successfully!',
                  autoCloseDuration: Duration(seconds: 2),
                );
              },
              child: Text("Success"),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.confirm,
                  text: 'Do you want to logout',
                  confirmBtnText: 'Yes',
                  cancelBtnText: 'No',
                  confirmBtnColor: Colors.green,
                );
              },
              child: Text("COnfirm"),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                CoolAlert.show(
                    context: context,
                    type: CoolAlertType.info,
                    text: 'Buy two, get one free');
              },
              child: Text("Info"),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                CoolAlert.show(
                    context: context,
                    type: CoolAlertType.warning,
                    text: 'You just broke protocol');
              },
              child: Text("Warning"),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                CoolAlert.show(
                    context: context,
                    type: CoolAlertType.loading,
                    text: 'Loading');
              },
              child: Text("Loading"),
            ),
          ],
        ),
      ),
    ));
  }
}
