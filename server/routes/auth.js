const express=require('express');
const authRouter=express.Router();

authRouter.get('/',(req,res)=>{
    res.send("This is for register into account")
    
});

module.exports=authRouter;