import 'package:logger/logger.dart';

Logger logger = Logger(
  printer: PrettyPrinter(
    printEmojis: false,
    printTime: true,
  ),
);
