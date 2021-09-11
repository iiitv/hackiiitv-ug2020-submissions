import "./Services.css";
import { NavLink } from "react-router-dom";
import logo1 from "../../Assests/Services/SearchHospitals.png";
import logo2 from "../../Assests/Services/Pharmacies.png";
import logo3 from "../../Assests/Services/Register.png";
import logo4 from "../../Assests/Services/FillYourDetails.png";
import logo5 from "../../Assests/Services/SOS.png";
import logo6 from "../../Assests/Services/Tracking.png";

const Services = () => {
  return (
    <div className="services">
      <div className="heading">
        <h2>Our Services</h2>
        <hr className="heading-line" />
        <p className="heading-sub">
          We provide the best services to fulfill all of your medical demands
        </p>
      </div>
      <div className="services-grid">
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img
                src={logo1}
                alt="Search Hospitals"
                className="grid-image-2"
              />
            </div>
            <div className="grid-child-title">
              <h3>Search Hospitals</h3>
            </div>
            <div className="grid-child-subtitle">
              <p>Find the nearest hospital...</p>
            </div>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src={logo2} alt="Pharmacies" className="grid-image-1" />
            </div>
            <div className="grid-child-title">
              <h3>Find Pharmacies</h3>
            </div>
            <div className="grid-child-subtitle">
              <p>Locate the nearest Generic Store</p>
            </div>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src={logo3} alt="Register" className="grid-image-1" />
            </div>
            <div className="grid-child-title">
              <h3>Register</h3>
            </div>
            <div className="grid-child-subtitle">
              <p>Register yourself for all other benefits</p>
            </div>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src={logo4} alt="Details" className="grid-image-1" />
            </div>
            <div className="grid-child-title">
              <h3>Fill your Details</h3>
            </div>
            <div className="grid-child-subtitle">
              <p>
                Free consultation with our trusted doctors and get the best
                recomendations
              </p>
            </div>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src={logo5} alt="SOS" className="grid-image-2" />
            </div>
            <div className="grid-child-title">
              <h3>SOS</h3>
            </div>
            <div className="grid-child-subtitle">
              <p>
                You can get 24/7 urgent care for yourself or your children and
                your lovely family
              </p>
            </div>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src={logo6} alt="Track" className="grid-image-1" />
            </div>
            <div className="grid-child-title">
              <h3>Tracking</h3>
            </div>
            <div className="grid-child-subtitle">
              <p>Track and save your medical history and health data</p>
            </div>
          </div>
        </NavLink>
      </div>
    </div>
  );
};

export default Services;
