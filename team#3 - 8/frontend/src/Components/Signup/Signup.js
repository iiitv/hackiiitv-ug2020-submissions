import React from "react";

function Signup() {
  return (
    <div className="signin-container">
      <div className="signin-wrapper">
        <form className="signin">
          <span className="signin-title">Sign Up</span>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="name"
              placeholder="Name"
            ></input>
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="email"
              placeholder="Email"
            ></input>
          </div>
          <div className="signin-input-wrapper">
            <input className="signin-input" type="date"></input>
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              placeholder="Address"
            ></input>
          </div>
          <div className="signin-input-wrapper">
            <input className="signin-input" type="text" placeholder="Pincode" />
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              placeholder="Phone Number"
            />
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              placeholder="Emergency Contact 1"
            />
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              placeholder="Emergency Contact 2"
            />
          </div>
          <div></div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="password"
              name="password"
              placeholder="Password"
            ></input>
          </div>
          <div className="signin-btn-wrapper">
            <button className="signin-btn">Register</button>
          </div>
          <div className="signin-link">
            <span>
              Already have an account? <a href="/login"> Login here</a>
            </span>
          </div>
        </form>
      </div>
    </div>
  );
}

export default Signup;
