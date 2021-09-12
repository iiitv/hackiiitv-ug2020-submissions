import React from "react";
import "./Signin.css";

const saveData = (event) => {
  sessionStorage.setItem("cust_email", event.target.email.value);
}

class SignInForm extends React.Component {
  handleSubmit = (event) => {
    event.preventDefault();

    saveData(event);
    const req = {
      cust_email: event.target.email.value,
      password: event.target.password.value,
    };
    fetch("http://localhost:8000/customers/login", {
      mode: "no-cors",
      method: "post",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(req),
    });
    window.location.href = "/";
  };
  render() {
    return (
      <div className="signin-container">
        <div className="signin-wrapper">
          <form className="signin" onSubmit={this.handleSubmit}>
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
}

export default SignInForm;
