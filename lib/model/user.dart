import 'package:aqueduct/managed_auth.dart';
import 'package:study_aqueduct/model/project.dart';
import 'package:study_aqueduct/study_aqueduct.dart';

class User extends ManagedObject<_User> implements _User, ManagedAuthResourceOwner<_User> {}

class _User extends ResourceOwnerTableDefinition {
  @Column()
  String email;

  @Column()
  int age;

  ManagedSet<Project> projects;
}