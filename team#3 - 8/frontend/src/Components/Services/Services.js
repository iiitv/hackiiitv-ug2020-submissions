import "./Services.css";
import { NavLink } from "react-router-dom";
const Services = () => {
  return (
    <div className="services">
      <div className="heading">
        <h2>Our Services</h2>
        <p>
          We provide the best services to fulfill all of your medical demands
        </p>
      </div>
      <div className="services-grid">
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src="" alt="" />
            </div>
            <h3>Search Hospital</h3>
            <p>Find the nearest hospital...</p>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src="" alt="" />
            </div>
            <h3>Cheapest Medicine</h3>
            <p>Locate the nearest Generic Store</p>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src="" alt="" />
            </div>
            <h3>Register</h3>
            <p>Register yourself for all other benefits</p>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src="" alt="" />
            </div>
            <h3>Fill your Details</h3>
            <p>
              Free consultation with our trusted doctors and get the best
              recomendations
            </p>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src="" alt="" />
            </div>
            <h3>SOS</h3>
            <p>
              You can get 24/7 urgent care for yourself or your children and
              your lovely family
            </p>
          </div>
        </NavLink>
        <NavLink to="/" className="services-link">
          <div className="grid-child">
            <div>
              <img src="" alt="" />
            </div>
            <h3>Tracking</h3>
            <p>Track and save your medical history and health data </p>
          </div>
        </NavLink>
      </div>
    </div>
  );
};

export default Services;
