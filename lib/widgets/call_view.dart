import 'package:flutter/material.dart';
import 'package:ui_whatapps/models/call.dart';
import 'package:ui_whatapps/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          final call = callList[index];
          return ListTile(
            leading:
                Icon(Icons.account_circle, color: Colors.black45, size: 48),
            title: Text(
              call.name,
              style: customTextStyle,
            ),
            subtitle: Text(
              call.statusDate,
              style: const TextStyle(color: Colors.black45, fontSize: 16),
            ),
            trailing: Icon(
              Icons.phone,
              color: Colors.lightGreen,
            ),
          );
        });
  }
}
