import 'package:clean_architecture_with_flutter/src/core/error/error_message_model.dart';

class ServerException implements Exception {
  ErrorMessageModel errorMessageModel;
  ServerException({
    required this.errorMessageModel,
  });
}
