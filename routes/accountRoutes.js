let express = require ("express");

let router = express.Router();

let authController = require("../controllers/accountController")
let authorization = require("../userManagement/authorization")


router.get("/hello", authorization.checkJSONWebToken, authController.sayHello);


module.exports = router;