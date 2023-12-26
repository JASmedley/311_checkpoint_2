let db = require("../data/recipes")


//Basic Recipe Functions
//WORKING
let listRecipes = function(req,res){
  let sql = "SELECT RecipeID, RecipeName FROM Recipes"
  db.query(sql,function(error,results){
    if (error) {
      console.error("Failed to get entries:", error);
      res.sendStatus(500);
    }

    else {
     res.json(results)
    }
})
}

//WORKING
let showRecipe = function(req,res){
  let RecipeID = req.params.id;
  let sql = "SELECT * FROM Recipes WHERE RecipeID = ?"
  let params = [RecipeID]

  db.query(sql, params, function(error,results){
    if(error){
      console.error("Could not fetch entry", error);
      res.sendStatus(500);
    }
    else if (results.length == 0){
      console.error("Recipe not found for id:",RecipeID)
      res.sendStatus(404)
    }
    else if (results.length >1){
      console.error("fetched more than 1 results for id", RecipeID)
      res.sendStatus(500)
    }
    else {
      res.json(results[0])
    }
  })
}

//WORKING
let createRecipe = function (req,res){
    let name = req.body.RecipeName;
    let sql = 'insert into Recipes (RecipeName) value(?)'
    let params = [name]

    db.query(sql, params, function(error,results){
      if(error){
        console.error("Couldn't add entry to the database",error)
        console.log("results are",results)
        res.sendStatus(500)
      }
      else {
        res.sendStatus(204)
      }
    });
    
}

//WORKING
let updateRecipe = function(req,res){
let RecipeID = req.params.id
let name = req.body.RecipeName;
let sql = "UPDATE Recipes SET RecipeName = ? WHERE RecipeID = ?"
let params = [name, RecipeID]
db.query(sql, params, function(error,result){
  if(error){
      console.error("Couldn't update recipe", error)
      res.sendStatus(500)
  }
  else {
      res.sendStatus(204)
  }
})
}

//WORKING
let deleteRecipe = function(req,res){
  let RecipeID = req.params.id
  let sql = "DELETE FROM Recipes WHERE RecipeID = ?"
  let params =[RecipeID]
  db.query(sql, params, function (error,result){
    if(error){
      console.error("Could not delete entry", error);
      res.sendStatus(500);
    }
    else {
      res.sendStatus(204)
    }
  })

}

//Modifying Recipes
let addIngredients = function(req,res){}

let addInstructions = function(req,res){}

let updateIngredients = function(req,res){}

let updateInstructions = function(req,res){}

module.exports = {
  listRecipes,
  showRecipe,
  createRecipe,
  updateRecipe,
  deleteRecipe,
  addIngredients,
  addInstructions,
  updateIngredients,
  updateInstructions
}


