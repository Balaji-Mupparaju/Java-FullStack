'use strict'
/*The 'use strict' directive in JavaScript is a way to enable strict mode. 
When you place 'use strict'; at the beginning of your script or a function, it enforces a stricter set of rules for JavaScript code,
helping to catch common coding errors and "unsafe" action.*/
// no use of with in strict mode.
// this is undefined in strict mode.

var arr=['WHITE','RED','GREEN','YELLOW','VIOLET','BLUE']

document.getElementById("button").addEventListener('click',(event)=>{
    var ele1=Math.random()*5;
    var ele=Math.round(ele1);
    console.log(ele)
    document.getElementById("main").style.backgroundColor=arr[ele];
    document.getElementById("spancontrol").textContent=arr[ele];
})
