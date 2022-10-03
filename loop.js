function fizz (x){
   var i=0;
   while(i<=x){
       if((i%3)==0){
           console.log(`fizz\n`);
       }
       else{
           consloe.log(`${i} \n`);
       }
       i++
       }
       return x

    }
    fizz(prompt("quantas repetições"))