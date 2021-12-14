import 'package:aqueduct/managed_auth.dart';
import 'package:study_aqueduct/model/project.dart';
import 'package:study_aqueduct/study_aqueduct.dart';

class User extends ManagedObject<_User> implements _User, ManagedAuthResourceOwner<_User> {
  @Serialize(input: true, output: false)
  String password;
}

class _User extends ResourceOwnerTableDefinition {
  @Column(nullable: true)
  String email;

  @Column(nullable: true )
  int age;

  ManagedSet<Project> projects;
}