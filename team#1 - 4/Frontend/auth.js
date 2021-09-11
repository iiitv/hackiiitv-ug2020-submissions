const Login = () => {

    // alert('hello stop me');
    const requestOptions = {
        method: 'POST',
        credentials: 'include',
        headers: {'Content-Type': 'application/json',
        'X-CSRFTOKEN': getCookie('csrftoken'),},
        body: JSON.stringify({
            email: document.getElementById("email").value,
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

logout=()=>{
    console.log("working");
    fetch(`${api_base_uri}/logout`, {
        method: 'GET',
        credentials: 'include'})
        .then((response) => response.json())
        .then((data) => {
            if(data.goto!==undefined)
            {
            location.replace(data.goto);
            }
            console.log(data);
            location.replace("/");
        });
}
