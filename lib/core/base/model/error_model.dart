import 'package:vexana/vexana.dart';

class BaseErrorModel extends INetworkModel<BaseErrorModel> {
  BaseErrorModel({
    this.version,
    this.statusCode,
    this.errorMessage,
  });

  final String? version;
  final int? statusCode;
  final String? errorMessage;

  factory BaseErrorModel.fromJson(Map<String, dynamic> json) => BaseErrorModel(
        version: json["Version"],
        statusCode: json["StatusCode"],
        errorMessage: json["ErrorMessage"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "Version": version,
        "StatusCode": statusCode,
        "ErrorMessage": errorMessage,
      };

  @override
  BaseErrorModel fromJson(Map<String, dynamic> json) {
    return BaseErrorModel.fromJson(json);
  }
}
