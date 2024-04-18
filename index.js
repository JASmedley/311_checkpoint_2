require("dotenv").config();
let express = require("express");
let userRoutes = require("./routes/userRoutes");
let recipeRoutes = require("./routes/recipeRoutes")
let accountRoutes = require("./routes/accountRoutes")
let PORT = process.env.PORT || 8003;
let app = express();

app.use(express.json());
app.use(express.static("./public/index.html"));
app.use(userRoutes);
app.use(recipeRoutes);
app.use(accountRoutes);
app.listen(PORT, function(){
  console.log("Application started on port",PORT)
});


