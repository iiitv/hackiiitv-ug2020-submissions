import { NavLink } from "react-router-dom";
import logo from "../../Assests/logo.jpeg" 
import "./Navbar.css";
const Navbar = () => {
    return(
        <nav className="navbar">
            <NavLink to="/" activeClassName="nav-link">
            <div className="logo">
                <div> <img src={logo} alt="Logo" /></div>
                <div><h1>Health+</h1></div>
            </div>
            </NavLink>
            <div className="navitems">
                <NavLink to="/" activeClassName="nav-link">
                    <div>Home</div>
                </NavLink>
                <NavLink to="/nearestHosp" activeClassName="nav-link">
                    <div>Nearest Hospital</div>
                </NavLink>
                <NavLink to="/sos" activeClassName="nav-link">
                    <div>SOS</div>
                </NavLink>
                <NavLink to="/login_signup" activeClassName="nav-link">
                    <div>Login/Signup</div>
                </NavLink>
                <NavLink to="/covid" activeClassName="nav-link">
                    <div>COVID-19</div>
                </NavLink>
                <NavLink to="/contact" activeClassName="nav-link">
                    <div>Contact Us</div>
                </NavLink>
            </div>
        </nav>
    )
}

export default Navbar;