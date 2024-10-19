
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget listTilePortion(BuildContext context, {required IconData icon, required String title,required Function onPress}) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
    leading: Icon(icon, color: Colors.teal),
    title: Text(
      title.tr,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
    trailing: const Icon(Icons.chevron_right_rounded),
    onTap: ()=> onPress(),
  );
}
