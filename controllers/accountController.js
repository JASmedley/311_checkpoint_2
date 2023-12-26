let database = require("../database")

//WORKING
let sayHello = function(req,res){

  let UserID = req.userID;
  let sql = 'select name from users where id = ?';
  let params = [UserID]
  database.query(sql,params, function(error,results){
      if (error){
        console.error("Couldn't get name");
        res.sendStatus(500)
      }

      else if (results.length != 1){
        console.error("Found another error", error)
        res.sendStatus(500);
      }
      
      else{
        res.json("Hello "+results[0].name)
      }
  })
}


module.exports = {
  sayHello
}
