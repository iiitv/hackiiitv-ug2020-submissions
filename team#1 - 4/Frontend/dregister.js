function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
  }
CheckD=()=>{
    var p1 = document.getElementById("password").value;
    var p2 = document.getElementById("confirm").value;
    if(p1===p2)
    {
        DRegister();
    }
    else
    alert("Password Not matches");
}

const DRegister = () => {

    // alert('hello stop me');
    const requestOptions = {
        method: 'POST',
        credentials: 'include',
        headers: {'Content-Type': 'application/json',
        'X-CSRFTOKEN': getCookie('csrftoken'),},
        body: JSON.stringify({
            name: document.getElementById("name").value,
            email: document.getElementById("email").value,
            latitude: document.getElementById("latitude").value,
            longitude: document.getElementById("longitude").value,
            ph: document.getElementById("ph").value,
            aadhaar_number: document.getElementById("Adhar").value,
            password: document.getElementById("password").value,
        }),
    };
    console.log(requestOptions);
     fetch(`http://api.pand.ml:3000/api/v1/doc-register`, requestOptions)
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
