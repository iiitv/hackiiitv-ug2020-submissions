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
            phone: document.getElementById("ph").value,
            Adhar: document.getElementById("Adhar").value,
            password: document.getElementById("password").value,
        }),
    };
    console.log(requestOptions);
     fetch(`${api_base_uri}/login`, requestOptions)
        .then((response) => response.json())
        .then((data) => {
            console.log(data);
            console.log('sd');
            if (data.error) {
                alert('something get wrong');
            }
            if (data.goto) {
                location.replace(data.goto);
                return;
                console.log('change page')
                // window.open(data.goto, '_self');
            }
            // window.open('/', '_self');
            location.replace("/");
        });
}
