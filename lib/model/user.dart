import 'package:study_aqueduct/model/project.dart';
import 'package:study_aqueduct/study_aqueduct.dart';

class User extends ManagedObject<_User> implements _User{}
class _User {
  @primaryKey
  int id;

  @Column()
  String name;

  @Column()
  String email;

  @Column(nullable: true)
  int age;

  @Column()
  String password;

  ManagedSet<Project> projects;
}