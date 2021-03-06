import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration4 extends Migration { 
  @override
  Future upgrade() async {
		database.addColumn("_User", SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false));
		database.addColumn("_User", SchemaColumn("password", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false));
		database.deleteColumn("_User", "username");
		database.deleteColumn("_User", "hashedPassword");
		database.deleteColumn("_User", "salt");
		database.alterColumn("_User", "email", (c) {c.isNullable = false;});
    database.deleteTable("_authtoken");
    database.deleteTable("_authclient");
		
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    