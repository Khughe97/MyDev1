DMLDemo2.dmlInsertDemo2();
DMlDemo2.dmlInsertDemo3();
DmlDemo2.dmlMultipleRecord_right1();
DmlDemo2.dmlMultipleRecord_right2();
DmlDemo2.dmlMultipleRecordUpdate_right1();

List<Account> listAcc = [select id, name from account ORDER BY CreatedDate desc limit 50];
delete listAcc;

Delete [select id, name from account ORDER BY CreatedDate desc limit 50];