let database = require("../database")
let argon2 = require("argon2");
let JsonWebToken = require("jsonwebtoken")

//WORKING
let newRegistration = async function (req,res){

  let email = req.body.email;
  let password = req.body.password;
  let name = req.body.name;
  let hash = await argon2.hash(password);
  let sql = "insert into users(email,password_hash,name) values (?,?,?)";
  let params = [email,hash,name];

  database.query(sql,params, function(error,results){
    if(error){
      console.error("Couldn't add entry to the database",error);
      console.log("results are",results);
      res.sendStatus(500);
    }
    else {
      res.json("User registered successfully.");
    }
  });


}

//WORKING
let startLogin = function(req,res){

  let email = req.body.email;
  let password = req.body.password;
  let sql = "select id, password_hash from users where email = ?";
  let params = [email];

  database.query(sql,params, async function(error,results){
    if(error){
      console.error("Couldn't find password in database.",error);
      res.sendStatus(500);
    }
    else {
      if(results.length == 0){
        console.error("User not found",error)
        res.sendStatus(404);
      }
      else if (results.length > 1) {
        console.error("Found more than one user with this email")
        res.sendStatus(500);
      }
      else {
        let hash = results[0].password_hash;
        let userID = results[0].id;
        let verifiedPassword = await argon2.verify(hash, password);
        if(verifiedPassword){
          let token ={
            "email": email,
            "user_id": userID
          }
          let signedToken = JsonWebToken.sign(token, process.env.JWT_SECRET,{expiresIn: "1h"})
          res.json(signedToken)
         }
         else {
          console.error("Incorrect Password");
          res.sendStatus(404);
         }
    }
  }
  }) ;


}



module.exports = {
  newRegistration,
  startLogin
}
