#  Checkpoint 2: Data Model for your Capstone App
## Overview
This app manages recipes and users for a website. You can create, review, update, and delete recipes. You can register users and they can login. 

## Recipe Routes
  ### Creation & Deletion
  1. **GET /recipes** - Lists the entire array of recipes from the data/index. *Working*
  2. **GET /recipes:id** - Shows the recipes that matches the passed-in ID.  *Working*
  3. **POST /recipes** - Creates a new recipe and adds it to the current array of recipes. *Working*
  4. **PUT /recipes:id** - Updates one recipe in the array based on the passed-in ID.  *Working*
  5. **DELETE /recipes:id** - Deletes one recipe in the array based on its ID.  *Working*
  
  ### Modification
  6. **POST /recipe/:id/ingredients** - Adds ingredients to a recipe that matchees the passed-in ID.
  7. **POST /recipes/:id/instructions** - Adds instructions for a recipe that matchees the passed-in ID.
  8. **PUT /recipes/:id/ingredients** - Updates ingredients to a recipe that matchees the passed-in ID.
  9. **PUT /recipes/:id/instructions** - Updates instructions for a recipe that matchees the passed-in ID.

## User Management Routes
  10. **GET /hello** - Requires that a user be signed in, then it will return a "hello" message that includes the user's name. *Working*
  11. **GET /register** - Accepts user information and password, and stores that information (but not the password) along with the password hash in the database.  *Working*
  12. **POST /login** - Accepts a uesr's email, name, and password and checks the password against the hash in the database that was stored during registration. If the password is good, it will return a token and if not, it returns an error.  *Working*