let express = require("express");
let router = express.Router()
let controller = require("../controllers/userControllers")


//Creating Users
router.post("/register",controller.newRegistration);
router.post("/login",controller.startLogin);


module.exports = router;