$(document).ready(function() {
    
   "use strict"
    $('.slider').ripples({
        dropRadius: 10,
        perturbance: 0.001,
    });
    
    $(".text").typed({
       strings:["first sentence","Second sentence"],
        typespeed:0,
        loop:true
        
    });
    
    
});



