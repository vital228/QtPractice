function dbInit()
{
    var db = LocalStorage.openDatabaseSync("Activity_DB", "", "Track exercise", 1000000)
    try {
        db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS trip_table (date text,trip_desc text)')
        })
    } catch (err) {
        console.log("Error creating table in database: " + err)
    };
}

function dbGetHandle()
{
    try {
        var db = LocalStorage.openDatabaseSync("Activity_DB", "",
                                               "Track exercise", 1000000)
    } catch (err) {
        console.log("Error opening database: " + err)
    }
    return db
}

function dbInsert(Pdate, Pdesc)
{
    var db = dbGetHandle()
    var rowid = 0;
    db.transaction(function (tx) {
        tx.executeSql('INSERT INTO trip_table VALUES(?, ?)',
                      [Pdate, Pdesc])
        var result = tx.executeSql('SELECT last_insert_rowid()')
        rowid = result.insertId
    })
    return rowid;
}

function dbReadAll()
{
    var db = dbGetHandle()
    db.transaction(function (tx) {
        var results = tx.executeSql(
                    'SELECT rowid,date,trip_desc FROM trip_table order by rowid desc')
        for (var i = 0; i < results.rows.length; i++) {
            listModel.append({
                                 date: results.rows.item(i).date,
                                 trip_desc: results.rows.item(i).trip_desc
                             })
        }
    })
}
