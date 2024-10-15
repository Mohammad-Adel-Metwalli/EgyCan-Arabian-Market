import 'package:flutter/material.dart';
import 'package:flutter_device_config/config.dart';

bool isPhoneFunction({required BuildContext context}) => context.deviceType.name == 'Mobile';