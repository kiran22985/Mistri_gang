//Imports packages here
const express=require('express');

//database connection
const mongoose=require('mongoose');
mongoose.connect('mongodb://localhost:27017/Mistri_app');
//=============
const authRouter=require('./routes/auth');
const adminRouter=require('./routes/admin'); 
const app=express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(authRouter);
app.use(adminRouter);



const PORT=3000;

app.listen(PORT,"0.0.0.0", ()=>{
    console.log(`connected to port ${PORT}`);
});