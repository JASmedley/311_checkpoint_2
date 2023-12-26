create database recipeApp ;

use recipeApp;

create table users (
  id int primary key auto_increment,
  email varchar(100) unique not null,
  password_hash varchar(1000) not null,
  name varchar(100)
)

create table Recipes (
  RecipeID int primary key auto_increment,
  RecipeName varchar(100) not null
  )
  
 SELECT RecipeID, RecipeName FROM Recipes
 
 SELECT * FROM Recipes WHERE RecipeID = 1
  
create table RecipeInstructions (
  InstructionID int primary key auto_increment,
  RecipeID int,
  UtensilID int,
  StepOrder int,
  Instructions varchar(2000) not null
  )
  
 create table RecipeDietary (
   RecipeID int,
   DietaryID int
  )
   
 create table RecipeIngredients (
   IngredientID int,
   RecipeID int,
   MeasurementID int,
   AlternateIngredientID int, 
   AllergenID int,
   AlternateAllergenID int, 
   IngredientAmount decimal
   )
   
 create table RecipeUtensils (
   UtensilID int,
   InstructionID int
   )
   
 create table Allergens (
   AllergenID int primary key auto_increment,
   AllergenName varchar(200) unique not null
   )
   
  create table Utensils (
   UtensilID int primary key auto_increment,
   UtensilName varchar(200) unique not null
   )
   
   create table Measurements (
   MeasurementID int primary key auto_increment,
   MeasurementName varchar(200) unique not null
   )
   
   create table Ingredients (
   IngredientID int primary key auto_increment,
   IngredientName varchar(200) unique not null
   )

	create table DietaryRestrictions (
   DietaryID int primary key auto_increment,
   DietaryName varchar(200) unique not null
   )


INSERT INTO DietaryRestrictions (DietaryName)
  VALUES
  ('Dairy-free'),
  ('Egg-free'),
  ('Fish-free'),
  ('Gluten-free'),
  ('Halal'),
  ('Keto'),
  ('Kosher'),
  ('Kosher (pareve)'),
  ('Low carb'),
  ('Nut-free'),
  ('Paleo'),
  ('Pescetarian'),
  ('Soy-free'),
  ('Vegan'),
  ('Vegetarian');  
  
  select * from DietaryRestrictions
  
  INSERT INTO Utensils (UtensilName)
  VALUES
  ('Knife'),
  ('Air fryer'),
  ('Aluminum foil'),
  ('Baking parchment'),
  ('Baking sheet'),
  ('Blender'),
  ('Bottle opener'),
  ('Bread knife'),
  ('Bread maker'),
  ('Cake pan'),
  ('Cheese cloth'),
  ('Chef’s knife'),
  ('Coffee maker'),
  ('Cutting board'),
  ('Electric whisk'),
  ('Food processor'),
  ('French press'),
  ('Frying pan'),
  ('Garlic press'),
  ('Grater'),
  ('Grill'),
  ('Hand blender'),
  ('Hand mixer'),
  ('Juicer'),
  ('Kettle'),
  ('Kitchen shears'),
  ('Ladle'),
  ('Masher'),
  ('Measuring cups'),
  ('Measuring spoons'),
  ('Meat thermometer'),
  ('Microwave'),
  ('Mixing bowl'),
  ('Ovenproof dish'),
  ('Pan'),
  ('Parchment paper'),
  ('Paring knife'),
  ('Pasta strainer'),
  ('Pizza cutter'),
  ('Plastic wrap'),
  ('Pressure cooker'),
  ('Rice cooker'),
  ('Rolling Pin'),
  ('Saucepan'),
  ('Scale'),
  ('Skimmer ladle'),
  ('Slotted spoon'),
  ('Slow cooker'),
  ('Sous vide'), 
  ('Spatula'),
  ('Stand Mixer'),
  ('Stirring spoon'),
  ('Tea Towel'),
  ('Toaster'),
  ('Toaster oven'),
  ('Tongs'),
  ('Vegetable peeler'),
  ('Whisk'),
  ('Wooden spoon');
  
  select * from Utensils
  
  INSERT INTO Allergens (AllergenName)
  VALUES
  ('Dairy'),
  ('Egg'),
  ('Fish'),
  ('Gluten'),
  ('Alcohol'),
  ('Pork'),
  ('Fruit'),
  ('Meat'),
  ('Nut'),
  ('Soy'),
  ('Bean'),
  ('Rice');
  
  select * from Allergens
  
  INSERT INTO Measurements (MeasurementName)
  VALUES
  ('Tablespoon'),
  ('Teaspoon'),
  ('Gram'),
  ('Kilogram'),
  ('Pound'),
  ('Pound (bag)'),
  ('Ounce'),
  ('Ounce (can)'),
  ('Ounce (bag)'),
  ('Litre'),
  ('Cup'),
  ('Quart'),
  ('Gallon'),
  ('Pint');
  
  select * from Measurements

INSERT INTO Recipes (RecipeName)
VALUES ('Cranberry Sauce');

select * from Recipes

INSERT INTO RecipeInstructions (RecipeID, UtensilID, StepOrder, Instructions)
VALUES 
(3, 59, 1, 'Halve the cranberries'),
(3, 43, 2, 'Dissolve the sugar into the water in a medium saucepan over medium heat'),
(3, 46, 3, 'Stir in cranberries'),
(3, 46, 4, 'Stir in lemon zest, vanilla extract, and spices'),
(3, 46, 5, 'Continue stirring until cranberries have dissolved into a thick paste');

select * from RecipeInstructions






