import { NavLink } from "react-router-dom";
import about_bg from "../../Assests/about-bg.png";
import "./About.css";
const About = () => {
  return (
    <div className="about">
      <section>
        <div className="tag-container">
          <h2>We are here to Simplify Healthcare</h2>
          <p>
            Health+ helps you keep a track of healthcare, and you best friend in
            tough times.
          </p>
        </div>
        <div className="register-container">
          <NavLink to="/register" exact className="to-register">
            Register Now
          </NavLink>
        </div>
      </section>
      <div>
        <img src={about_bg} alt="bg-about" />
      </div>
    </div>
  );
};

export default About;
