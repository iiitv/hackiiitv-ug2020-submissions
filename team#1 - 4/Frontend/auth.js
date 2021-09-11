function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
  }

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
     fetch(`http://hackiiitv.thetgnteam.com:3000/api/v1/login`, requestOptions)
        .then((response) => response.json())
        .then((data) => {
            console.log(data);
            console.log('sd');
            if (data.error_code) {
                alert('something got wrong');
            }
            if (data.goto) {
                // location.replace(data.goto);
                // return;
                console.log('change page')
                // window.open(data.goto, '_self');
            }
            // window.open('/', '_self');
          
        });
}

logout=()=>{
    console.log("working");
    fetch(`http://hackiiitv.thetgnteam.com:3000/api/v1/logout`, {
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
