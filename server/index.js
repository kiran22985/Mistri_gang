//Imports packages here
const express=require('express');

//Imports from other files
const authRouter=require('./routes/auth')

//INIT 
const app=express();

const PORT=3000;

app.listen(PORT, ()=>{
    console.log(`connected to port ${PORT}`);
});