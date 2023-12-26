require("dotenv").config();
let express = require("express");
let routes = require("./routes");
let recipeRoutes = require("./routes/recipeRoutes")
let accountRoutes = require("./accountRoutes")
let PORT = process.env.PORT || 8003;
let app = express();

app.use(express.json());
app.use(express.static("./public/index.html"));
app.use(routes);
app.use(recipeRoutes);
app.use(accountRoutes);
app.listen(PORT, function(){
  console.log("Application started on port",PORT)
});


