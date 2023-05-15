// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future<void> updateThingStates(
  ThingsRecord thing,
  List<String>? setVar,
  List<String>? removeVar,
) async {
  // Add variables to the 'states' array in the 'thing' document.
  if (setVar != null && setVar.isNotEmpty) {
    for (var i = 0; i < setVar.length; i++) {
      await thing.reference.update({
        'states': FieldValue.arrayUnion([setVar[i]]),
      });
    }
  }

  // Remove variables from the 'states' array in the 'thing' document.
  if (removeVar != null && removeVar.isNotEmpty) {
    for (var i = 0; i < removeVar.length; i++) {
      await thing.reference.update({
        'states': FieldValue.arrayRemove([removeVar[i]]),
      });
    }
  }
}
