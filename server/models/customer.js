const mongoose=require('mongoose');

const customerSchema=new mongoose.Schema({
    fullName:{
        type:String,
        required:true,
        
    },
    phone:{
        type:String,
        required:true,
        
    },
    email:{
        type:String,
        required:true,
        validate: {
            validator: (value) => {
              const re =
                /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
              return value.match(re);
            },
            message: "Please enter a valid email address",
          },
    },
    address:{
        type:String,
        required:true,
        
    },
    password:{
        type:String,
        required:true,
        // validate: {
        //     validator: (value) => {
              
                
        //       return value.length>6;
        //     },
        //     message: "Please enter a long password",
        //   },
        
    },
});

const custModel=mongoose.model('customers',customerSchema);
module.exports=custModel;