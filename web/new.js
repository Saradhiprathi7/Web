//alert("enterd");
var request = new XMLHttpRequest();
function searchInfo() {
  //  alert("called searchinfo");
    var empid = document.vinform.empid.value;
    var firstname = document.vinform.firstname.value;
    var lastname = document.vinform.lastname.value;
    
    //var url;
    if(empid)
    {
         url = "sear.jsp?val=" + empid;
         //alert("idno:"+url);
         //console.log(idno);
    }
    else if(firstname)
    {
        url= "sear.jsp?val=" + firstname;
        //alert("first:"+url);
    }
    else if(lastname)
    {
         url = "sear.jsp?val=" + lastname;
        //alert("last:"+url);
    }
    try {
        request.open("GET", url, true);
        
        //alert("opend");
        request.onreadystatechange = readyState;
        request.send();
        function readyState() {
          //  alert("on");
            if (request.readyState === 4) {
                var val = request.responseText;
            //    alert(val);
                document.getElementById('mylocation').innerHTML = val;

            }
            }
    } 
    catch (e) 
    {
        alert("Unable to connect to server");
    }
    
}  
