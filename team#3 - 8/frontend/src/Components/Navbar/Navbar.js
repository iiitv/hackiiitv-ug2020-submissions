import { NavLink } from "react-router-dom";
import logo from "../../Assests/logo.png";
import "./Navbar.css";
const Navbar = () => {
  return (
    <nav className="navbar">
      <NavLink to="/" exact className="nav-link">
        <div className="logo">
          <div>
            {" "}
            <img src={logo} alt="Logo" />
          </div>
          <div>
            <h1>Health+</h1>
          </div>
        </div>
      </NavLink>
      <div className="navitems">
        <NavLink to="/" exact className="nav-link">
          <div>Home</div>
        </NavLink>
        <NavLink to="/nearestHospital" exact className="nav-link">
          <div>Nearest Hospital</div>
        </NavLink>
        <NavLink to="/sos" exact className="nav-link sos">
          <div>SOS</div>
        </NavLink>
        <NavLink to="/covid" exact className="nav-link">
          <div>COVID-19</div>
        </NavLink>
        <NavLink to="/reportcase" exact className="nav-link">
          <div>Report a Case</div>
        </NavLink>
        <NavLink to="/login" exact className="nav-link">
          <div>Login/Signup</div>
        </NavLink>
      </div>
    </nav>
  );
};

export default Navbar;
