import 'package:vexana/vexana.dart';

class BaseResponseModel extends INetworkModel<BaseResponseModel> {
  BaseResponseModel({
    this.version,
    this.statusCode,
    this.errorMessage,
  });

  final String? version;
  final int? statusCode;
  final String? errorMessage;

  factory BaseResponseModel.fromJson(Map<String, dynamic> json) =>
      BaseResponseModel(
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
  BaseResponseModel fromJson(Map<String, dynamic> json) {
    return BaseResponseModel.fromJson(json);
  }
}
