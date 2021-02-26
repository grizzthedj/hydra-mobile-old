// import { SQLite, SQLiteObject } from '@ionic-native/sqlite/ngx';
import { Injectable } from '@angular/core';

// var sqlite3 = require('sqlite3').verbose();
// let db = new sqlite3.Database('./db/hydra.db', (err) => {
//   if (err) {
//     console.error(err.message);
//   }
//   console.log('Connected to the hydra database.');
// });

@Injectable({
  providedIn: 'root'
})
export class DataService {
  constructor(/*public sqlite: SQLite*/) { 
    // db.serialize(function() {
    //   db.each("select id from settings", function(err, row) {
    //     console.log(row.id + ": " + row.info);
    //   });
    // });

    // db.close();
  }
}
