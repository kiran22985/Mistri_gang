const express=require('express');
const custModel = require('../models/customer');
const bcryptjs=require('bcryptjs');
const authRouter=express.Router();

//SIGN UP
authRouter.post("/custregister", async (req, res) => {
  try {
    const { fullName, phone, email,address, password } = req.body;

    const existingUser = await custModel.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let user = new custModel({
      fullName,
      phone,
      email,
      address,
      password: hashedPassword,
      
    });
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
module.exports=authRouter;