import { NavLink } from "react-router-dom";
import "./About.css"
const About = () => {
  return (
    <div className="about">
      <section>
        <h2>We are here to Simplify Healthcare</h2>
        <p>
          Health+ helps you keep a track of healthcare, and you best friend in
          tough times.
        </p>
        <NavLink to="/register" exact className="to-register">
          Register Now
        </NavLink>
      </section>
      <div>
        <img src="" alt="bg-about" />
      </div>
    </div>
  );
};

export default About;
