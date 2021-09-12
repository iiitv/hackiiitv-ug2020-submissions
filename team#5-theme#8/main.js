"use strict";

let menu = document.querySelector(".fa-bars");
let navbar = document.querySelector(".navbar");

menu.addEventListener("click", function () {
  menu.classList.toggle("fa-times");
  navbar.classList.toggle("nav-toggle");
});

window.addEventListener("scroll", () => {
  menu.classList.remove("fa-times");
  navbar.classList.remove("nav-toggle");
});


//------------------ARV------------------------

//----------------QuerySelectors-----------------------------
const input = document.querySelector('.input_text');
const main = document.getElementById('name');
const temp = document.querySelector('.temp');
const desc = document.querySelector('.desc');
const clouds = document.querySelector('.clouds');
const button = document.querySelector('.submit');
const errorBox = document.querySelector('.error__message');
const HtmlInsert = document.querySelector(".insert_html");

//-----------------Helper functions--------------------------
const renderHtml = function (data) {
  const tempValue = data.main.temp;
    console.log(tempValue);


    //-------------Name------------------
    const nameValue = data.name;
    console.log(nameValue);


    //-------------Weather description------------------
    const descValue = data.weather[0].description;
    console.log(descValue);


    //-------------Coordinates------------------
    const { lon: longitude, lat: latitude } = data.coord;
    console.log(longitude, latitude);


    //-------------Temp, humidity, pressure------------------
    let {
      temp: temperature,
      feels_like: realFeel,
      temp_min: minTemp,
      temp_max: maxTemp,
      pressure: pressure,
      humidity: humidity,
    } = data.main;

    temperature = (temperature - 273.15).toFixed(2);
    realFeel = (realFeel - 273.15).toFixed(2);
    minTemp = (minTemp - 273.15).toFixed(2);
    maxTemp = (maxTemp - 273.15).toFixed(2);

    console.log(temperature, realFeel, minTemp, maxTemp, pressure, humidity);

    //-------------Wind------------------
    let { speed: speed } = data.wind;
    console.log(speed);

    let windPower = ((0.5 * pressure * 15500 * 0.35 * speed * speed * speed * 0.6 * 0.95)/(8.31 * temperature)).toFixed(2);  

    let numberOfHouseholds = Math.round((windPower / 5000));
  
  const html = `
  <section class="energies">
      <div class="heading-results">
        <h1 class="heading__text">${nameValue}</h1>
      </div>
      <div class="solar__section">
        <div class="solar color">
          <a href="solar.html"><ion-icon name="sunny-outline" class="feature-icon"></ion-icon></a>
          <h1 class="primary__heading">
            Solar <br />
            Energy
          </h1>
        </div>
        <div class="solar-text">
          <ul class="list">
            <li class="list__item"><b class="boldText">Longitude:</b> ${longitude}°</li>
            <li class="list__item"><b class="boldText">Temperature:</b> ${temperature}°C</li>
            <li class="list__item">
              <b class="boldText">Min. Temperature:</b> ${minTemp}°C
            </li>
            <li class="list__item"><b class="boldText">Latitude:</b> ${latitude}°</li>
            <li class="list__item"><b class="boldText">Humidity:</b> ${humidity}</li>
            <li class="list__item">
              <b class="boldText">Max. Temperature:</b> ${maxTemp}°C
            </li>
          </ul>
          
          
        </div>
      </div>

      <div class="wind__section">
        <div class="wind color">
          <a href="wind.html"><i class="ph-wind feature-icon"></i></a>
          <h1 class="primary__heading">
            Wind <br />
            Energy
          </h1>
        </div>
        <div class="wind-text">
          
          <ul class="list">
            <li class="list__item"><b class="boldText">Longitude:</b> ${longitude}°</li>
            <li class="list__item"><b class="boldText">Wind Speed:</b> ${speed}m/s</li>
            <li class="list__item">
              <b class="boldText">Population:</b>${1.2}M 
            </li>
            <li class="list__item"><b class="boldText">Latitude:</b> ${latitude}°</li>
            <li class="list__item"><b class="boldText">Pressure:</b>${pressure} </li>
            <li class="list__item">
              <b class="boldText">Max. Temperature:</b> ${maxTemp}°C
            </li>
          </ul>
          
        </div>
      </div>
    </section>

    <div class="wind__calculator">
      <div class="calculator"><h1 class="wind_energy-calculate">Wind Power Calculator</h1></div>
      <h2 class="wind_energy-power">Wind power generated:  ${windPower} W</h2>

      <p class="para">Considering a house hold require 5000 W of power</p>
      <h2 class="households">
        Number of household a <br> turbine can provide electricity: ${numberOfHouseholds}
      </h2>
    </div>
  `;

HtmlInsert.insertAdjacentHTML('afterend', html);
};

const renderError = function (err) {
  errorBox.textContent = err;
};

//-----------------API call----------------------------------
const apiFn = async function () {
  try {
    const res = await fetch(
      `https://api.openweathermap.org/data/2.5/weather?q=
      ${input.value}
      &appid=50a7aa80fa492fa92e874d23ad061374`
    );

    const data = await res.json();

    // if(data.message === 'city not found') {
    //   renderError(`This country does not exist. Please try again`);
    // }
    console.log(data);
    // errorBox.textContent = data.message;

    renderHtml(data);
    // const tempValue = data.main.temp;
    // console.log(tempValue);


    // //-------------Name------------------
    // const nameValue = data.name;
    // console.log(nameValue);


    // //-------------Weather description------------------
    // const descValue = data.weather[0].description;
    // console.log(descValue);


    // //-------------Coordinates------------------
    // const { lon: longitude, lat: latitude } = data.coord;
    // console.log(longitude, latitude);


    // //-------------Temp, humidity, pressure------------------
    // let {
    //   temp: temperature,
    //   feels_like: realFeel,
    //   temp_min: minTemp,
    //   temp_max: maxTemp,
    //   pressure: pressure,
    //   humidity: humidity,
    // } = data.main;

    // temperature = (temperature - 273.15).toFixed(2);
    // realFeel = (realFeel - 273.15).toFixed(2);
    // minTemp = (minTemp - 273.15).toFixed(2);
    // maxTemp = (maxTemp - 273.15).toFixed(2);

    // console.log(temperature, realFeel, minTemp, maxTemp, pressure, humidity);

    // //-------------Wind------------------
    // let { speed: speed } = data.wind;
    // console.log(speed);


    //-------------Html-------------------
    main.innerHTML = nameValue;
    desc.innerHTML = 'Desc - ' + descValue;
    temp.innerHTML = `Temp - ${(tempValue - 273.15).toFixed(2)} °C`;
    input.value = '';

  } catch (err) {
    renderError(`This country does not exist. Please try again`);
    setTimeout(function () {
      errorBox.style.display = 'none';
    }, 3000);
    input.value = '';
  }
};


//----------------------Event Listeners---------------------
document.addEventListener('keypress', function (e) {
  if (e.key === 'Enter') {
    if (input.value == '') {
      renderError(`Please enter a city name`);
      setTimeout(function () {
        errorBox.style.display = 'none';
      }, 3000);
    } else {
      apiFn();
    }
  }
});

button.addEventListener('click', function () {
  if (input.value == '') {
    renderError(`Please enter a city name`);
    setTimeout(function () {
      errorBox.style.display = 'none';
    }, 3000);
  } else {
    apiFn();
  }
});

