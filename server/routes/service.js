const express = require("express");
const productRouter = express.Router();
const auth = require("../middlewares/auth");
const { Product, Service } = require("../models/service");

productRouter.get("/api/products/", async (req, res) => {
  try {
    const products = await Service.find({ category: req.query.category });
    res.json(products);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports=productRouter;