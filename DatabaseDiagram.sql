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
  RecipeName varchar(100) not null,
  DietaryID int 
  )
  
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