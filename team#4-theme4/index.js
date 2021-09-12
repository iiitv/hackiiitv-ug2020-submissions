const express = require('express');
const app = express();
const path = require('path');
const { v4: uuid } = require('uuid');
const methodOverride = require('method-override');

// use stuff
app.use(express.urlencoded({ extended: true }));
// app.use(express.static());a
app.use(methodOverride('_method'));
// for bootstrap
app.use(express.static(path.join(__dirname, 'public')));
// set stuff
app.set('view engine', 'views');
app.set('views', path.join(__dirname, 'views'));

let userDetails = [
]

let workerDetails = [

]

let work = [
    
]

let priceOfWork = [

]

let workAssigned = [

]

app.get('/home', (req,res) => {
    res.render('home.ejs');
})

// customer signup
app.get('/signup/customer', (req,res) => {
    res.render('customerSignup.ejs');
})

app.get('/home/customerHomepage/:id', (req,res) => {
    const {id} = req.params;

    res.render('customerHomePage.ejs', {userDetails, id, priceOfWork, workAssigned, workerDetails});
})
app.post('/home/logincustomer', (req,res)=>{
    const {username, password, email, address} = req.body;
    let id = uuid();
    let objj = {
        username: username,
        password: password,
        email: email,
        address: address,
        id: id,
    } 

    userDetails.push(objj);
    res.redirect(`http://localhost:8080/home/customerHomepage/${id}`);
})



// customer login

app.get('/login/customer', (req,res)=>{
    res.render('customerLogin.ejs', userDetails);
})

app.get('/home/error', (req,res)=>{
    res.render('error.ejs');
})
app.post('/home/customerHomepage', (req,res) => {
    const {usernameInput, passwordInput} = req.body;

    let flag = false;
    for(let d of userDetails){
        if(d.username === usernameInput && d.password === passwordInput){
            res.redirect(`http://localhost:8080/home/customerHomepage/${d.id}`);
            flag = true;
        }
    }

    if(!flag){
        res.redirect('http://localhost:8080/home/error');
    
    }
})


// WORKER SIGNUP LOGIN
app.get('/signup/worker', (req,res)=>{
    res.render('workerSignup.ejs');
})

app.get('/home/workerHomepage/:id', (req,res)=>{
    const {id} = req.params;
    
    res.render('workerHomepage.ejs', {workerDetails, id, work});
})

app.post('/home/loginworker', (req,res)=>{
    const {username, password, email, address, typeOfWork} = req.body;
    let id = uuid();
    let objj = {
        username: username,
        password: password,
        email: email,
        address: address,
        id: id,
        workType: typeOfWork,
    } 

    workerDetails.push(objj);
    res.redirect(`http://localhost:8080/home/workerHomepage/${id}`);
})

// worker login
app.get('/login/worker', (req,res)=>{
    res.render('workerLogin.ejs', userDetails);
})

app.get('/home/errorWorker', (req,res)=>{
    res.render('errorWorker.ejs');
})

app.post('/home/workerHomepage', (req,res) => {
    const {usernameInput, passwordInput} = req.body;

    let flag = false;
    for(let d of workerDetails){
        if(d.username === usernameInput && d.password === passwordInput){
            
            res.redirect(`http://localhost:8080/home/workerHomepage/${d.id}`);
            flag = true;
        }
    }

    if(!flag){
        res.redirect('http://localhost:8080/home/errorWorker');
    }
})

// CUSTOMER HOMEPAGE FUNCTIONALITIES
app.get('/customer/:id/workForm', (req,res) => {
    const {id} = req.params;

    res.render("workForm.ejs", {userDetails, id});
})

app.post('/home/customerPage2/:id', (req,res) => {

    const {addToClean, contactDet, imagee, workType} = req.body;
    const {id} = req.params;
    let objectOfWork = {
        typeOfWork: workType,
        address: addToClean,
        contact: contactDet,
        image: imagee,
        userId: id
    }

    
    // console.log(objectOfWork.typeOfWork);
    // console.log(workType);
    work.push(objectOfWork);
    res.redirect(`http://localhost:8080/home/customerHomepage/${id}`);
})

app.get('/home/:id/:wid/:wType', (req,res) => {
    const{id, wid, wType} = req.params;
    // console.log(wid);

    workAssigned.push(wType);
    
    res.render('pricePage.ejs', {id, wid, wType});
})

app.post('/home/customerHomepage/:id', (req,res) => {
    const{price, workerId, name, contact} = req.body;
    // const{id} = req.params;

    const obj = {
        price: price,
        name: name,
        contact: contact
    }

    priceOfWork.push(obj);

    // console.log(id);

    res.redirect(`http://localhost:8080/home/workerHomepage/${workerId}`)
})


app.get('/home/aboutUs', (req,res) => {
    res.render('aboutUs.ejs');
})

app.get('/home/shopping', (req,res)=>{
    res.render('shopIndex.ejs');
})
app.listen(8080, (req,res)=>{
    console.log("LISTENING TO PORT 8080!!");
})
