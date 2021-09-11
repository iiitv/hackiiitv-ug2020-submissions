function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
  }

CheckP=()=>{
    var p1 = document.getElementById("password").value;
    var p2 = document.getElementById("confirm").value;
    if(p1===p2)
    {
        PRegister();
    }
    else
    alert("Password Not matches");
}

const PRegister = () => {

    // alert('hello stop me');
    const requestOptions = {
        method: 'POST',
        credentials: 'include',
        headers: {'Content-Type': 'application/json',
        'X-CSRFTOKEN': getCookie('csrftoken'),},
        body: JSON.stringify({
            
            name: document.getElementById("name").value,
            email: document.getElementById("email").value,
            ph: document.getElementById("ph").value,
            aadhaar_number: document.getElementById("Adhar").value,
            password: document.getElementById("password").value,
        }),
    };
    console.log(requestOptions);
     fetch(`http://api.pand.ml:3000/api/v1/register`, requestOptions)
        .then((response) => response.json())
        .then((data) => {
            console.log(data);
            console.log('sd');
            if (data.error_code) {
                alert('something got wrong');
            }
            if (data.goto) {
                location.replace(data.goto);
                return;
                console.log('change page')
                // window.open(data.goto, '_self');
            }
            // window.open('/', '_self');
           
        });
}
