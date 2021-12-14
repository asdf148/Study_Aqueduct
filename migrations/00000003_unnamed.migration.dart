import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration3 extends Migration { 
  @override
  Future upgrade() async {
   		database.alterColumn("_User", "email", (c) {c.isNullable = true;});
		database.alterColumn("_User", "age", (c) {c.isNullable = true;});
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    