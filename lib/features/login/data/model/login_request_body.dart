import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_body.g.dart';

@JsonSerializable()
class LoginReguestBody {
  String email;
  String password;
  LoginReguestBody({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$LoginReguestBodyToJson(this);
}
