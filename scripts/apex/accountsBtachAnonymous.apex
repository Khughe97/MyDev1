AccountsBatch ab = new AccountsBatch();
id batchId = database.executeBatch(ab, 15);
system.debug('batch id ==> ' + batchId);