jQuery(document).ready(function() {
    
   "use strict"
    $('.slider').ripples({
        dropRadius: 20,
        perturbance: 0.01,
    });
    
    $(".text").typed({
       strings:["first sentence","Second sentence"],
        typespeed:0,
        loop:true
        
    });
    
    
});