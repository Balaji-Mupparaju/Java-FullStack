document.addEventListener('DOMContentLoaded',()=>{
    const submit=document.getElementById('submit');
    submit.addEventListener('click',(event)=>{
        event.preventDefault();
        const mail = document.getElementById('mail').value.trim();
        const pass = document.getElementById('pass').value.trim();
        if(mail=="" || pass==""){
            alert("Enter the credentails!!")
        }
        else{
            window.location.href="consumerinfo.html";
        }
    })
})