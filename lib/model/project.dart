import 'package:aqueduct/aqueduct.dart';
import 'package:study_aqueduct/model/user.dart';

class Project extends ManagedObject<_Project> implements _Project {}

class _Project {
  @primaryKey
  int id;

  @Column()
  String title;

  @Column()
  String context;

  @Column()
  DateTime startAt;

  @Column()
  DateTime endAt;

  @Relate(#projects)
  User user;
}