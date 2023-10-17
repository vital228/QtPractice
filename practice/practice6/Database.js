function dbInit()
{
    var db = LocalStorage.openDatabaseSync("Product_DB", "", "Products", 1000000)
    try {
        db.transaction(function (tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS product_table (name text,cost integer)')
        })
    } catch (err) {
        console.log("Error creating table in database: " + err)
    };
}

function dbGetHandle()
{
    try {
        var db = LocalStorage.openDatabaseSync("Product_DB", "",
                                               "Products", 1000000)
    } catch (err) {
        console.log("Error opening database: " + err)
    }
    return db
}

function dbInsert(Pname, Pcost)
{
    var db = dbGetHandle()
    var rowid = 0;
    db.transaction(function (tx) {
        tx.executeSql('INSERT INTO product_table VALUES(?, ?)',
                      [Pname, Pcost])
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
                    'SELECT rowid,name,cost FROM product_table order by rowid desc')
        for (var i = 0; i < results.rows.length; i++) {
            productModel.append({
                                 id: results.rows.item(i).rowid,
                                 name: results.rows.item(i).name,
                                 cost: results.rows.item(i).cost
                             })
        }
    })
}

function dbDelete(Pid)
{
    var db = dbGetHandle()
    db.transaction(function (tx) {
        tx.executeSql("DELETE FROM product_table WHERE rowid = ?;", [Pid]);
        });
}

function dbSumCosts()
{
    var db = dbGetHandle()
    var sum = 0;
    db.readTransaction(function (tx) {
        var result = tx.executeSql(
        "SELECT SUM(cost) AS costSum FROM product_table");
        sum = result.rows.item(0).costSum;
        });
    return sum;
}
