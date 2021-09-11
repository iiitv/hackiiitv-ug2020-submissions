function getCookie(name) {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${name}=`);
    if (parts.length === 2) return parts.pop().split(';').shift();
  }
let data;
resp='true';
logfunc=()=>{
    console.log("hello");
    //here we will be recieving response form the server in temp
const get_user_info = () => {
    fetch(`http://hackiiitv.thetgnteam.com:3000/api/v1/me`, {
        method: 'GET',
        credentials: 'include'})
        .then((response) => response.json())
        .then((data) => {
            process_user_info(data);
        });
    }
        const process_user_info = (data) => {
            console.log(data);
            // let msg = data.msg;
            let user = data.name;
            let loggedin = data.loggedin;
            let error = data.error;
            if (error) {
                alert(error);
                return
            }
            // document.getElementById('Username').innerText = username;
            // document.getElementById('valid').innerText = msg;
            // document.getElementById('loggedin').innerText = loggedin;
            // console.log(data.loggedin);
            console.log(data.loggedin);

            if(data.logged_in==true){
            document.getElementById("helloo").innerHTML=`<div class="wboxuser"><h1>Hello: ${data.name}</h1></div>`;
            document.getElementById("user_logout").innerHTML=` <button onclick="logout()">Logout</button>`
            
            if(data.profile_image_link==null)
            document.getElementById("perinfo").innerHTML= `<img src="sampleprofile.jpg" alt="" srcset="" > <p class="textpinfo">Hello: ${data.username}</p>`
            else
            document.getElementById("perinfo").innerHTML=`<img src="${data.profile_image_link}" alt="" srcset="" width="40px"> <p class="textpinfo">Hello: ${data.username}</p>`;
                console.log("testtrue");
        }
            else {
            document.getElementById("patient_auth").innerHTML=
            ` <div class="pregister">
                <a href = "pregister.html"><button>Regitser</button></a>
            </div>
            <div class="plogin">
            <a href="dlogin.html"><button>Login</button></a>
            </div>`;
            
            document.getElementById("doctor_auth").innerHTML=
            ` <div class="wbox1">
            <p>Doctors Only..</p>
            <div class="docwrap">
            <div class="dregister">
            <a href="dregister.html"><button>Regitser</button></a>
            </div>
             <div class="dlogin">
              <a href="dlogin.html"><button>Login</button></a>
            </div>
            </div>
            </div>`

            console.log("testfalse");
            
        }
        }
        
    get_user_info()
    }