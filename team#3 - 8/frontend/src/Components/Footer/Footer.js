import React from "react";
import "./Footer.css";
import logo from "../../Assests/LOGOTEXT.png";

function Footer() {
  return (
    <div className="footer-container">
      <div className="footer-child">
          <img src={logo} alt="Health+" className="footer-img"></img>
          <div className="footer-subtitle">
              <p>All rights reserved</p>
          </div>
      </div>
      <div className="footer-child">
        <div className="footer-title">Company</div>
        <div className="footer-subtitle">
          <p className="footer-text">About</p>
          <p className="footer-text">Testimonial</p>
          <p className="footer-text">Find a doctor</p>
          <p className="footer-text">Apps</p>
        </div>
      </div>
      <div className="footer-child">
        <div className="footer-title">Help</div>
        <div className="footer-subtitle">
          <p className="footer-text">Help Center</p>
          <p className="footer-text">Contact support</p>
          <p className="footer-text">Instructions</p>
          <p className="footer-text">How it works</p>
        </div>
      </div>
    </div>
  );
}

export default Footer;
