import React from "react";
import "./Signin.css";

function Signin() {
  return (
    <div className="signin-container">
      <div className="signin-wrapper">
        <form className="signin">
          <span className="signin-title">Sign In</span>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="email"
              placeholder="Email"
            ></input>
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="password"
              name="password"
              placeholder="Password"
            ></input>
          </div>
          <div className="signin-btn-wrapper">
            <button className="signin-btn">Login</button>
          </div>
          <div className="signin-link">
            <span>
              Don't have an account? <a href="/register"> Register here</a>
            </span>
          </div>
        </form>
      </div>
    </div>
  );
}

export default Signin;
