import 'package:flutter/material.dart';
import 'package:flutter_application_1/myapp.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(  const ProviderScope(child: Myapp()));
}

