import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'package:aqueduct/aqueduct.dart';
import 'package:study_aqueduct/model/user.dart';

class AccountController extends ResourceController {
  AccountController(this.context);

  final ManagedContext context;

  Future<Response> signUp(RequestBody body) async {
    final signUp = await body.decode();
    
    final bytes = utf8.encode(signUp["password"] as String);
    final hashed = sha256.convert(bytes);

    final query = Query<User>(context)
      ..values.name = signUp['name'] as String
      ..values.email = signUp['email'] as String
      ..values.age = signUp['age'] as int
      ..values.password = hashed.toString();

    final User user = await query.insert();

    return Response.ok(user);
  }

  Future<Response> login(RequestBody body) async {
    
  }
}