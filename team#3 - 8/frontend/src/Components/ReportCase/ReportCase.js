import React from "react";
import "./ReportCase.css";
class ReportCase extends React.Component {
  handleSubmit = (event) => {
    event.preventDefault();

    const req = {
      cust_email: event.target.email.value,
      password: event.target.password.value,
      name: event.target.name.value,
      address: event.target.address.value,
      age: event.target.age.value,
      pincode: event.target.pincode.value,
      phone_number: event.target.phone_number.value,
      emergency_contact1: event.target.econe.value,
      emergency_contact2: event.target.ectwo.value,
    };
    fetch("http://localhost:8000/customers/signup", {
      mode: "no-cors",
      method: "post",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(req),
    });
    window.location.href = "/login";
  };
  render() {
    return (
      <div className="signin-container">
        <div className="signin-wrapper">
          <form className="signin" onSubmit={this.handleSubmit}>
            <span className="signin-title">Report a Case</span>
            <span className="signin-title" style={{ fontSize: "25px" }}>
              Your Contact Info
            </span>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="name"
                placeholder="Name"
                required
              ></input>
            </div>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="phone_number"
                placeholder="Phone Number"
                required
              />
            </div>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="address"
                placeholder="Address"
                required
              ></input>
            </div>
            <span className="signin-title small" style={{ fontSize: "25px", padding:"20px" }}>
              Patient’s Details
            </span>
            <div className="signin-input-wrapper" style={{ textAlign:"center" }}>
              Patient's Name, Age and Blood Group aren't compulsory. 
            </div>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="name"
                id="name"
                placeholder="Name"
              ></input>
            </div>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="age"
                id="age"
                placeholder="Age"
              ></input>
            </div>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="bloodgrp"
                id="bloodgrp"
                placeholder="Blood Group"
              ></input>
            </div>
            <div className="signin-input-wrapper">
              <select name="injury" className="signin-input" required>
                <option value="physical" selected>
                  Physical Injury
                </option>
                <option value="heart">Heart</option>
                <option value="ent">ENT</option>
                <option value="liver">Liver</option>
              </select>
            </div>
            <div className="signin-input-wrapper">
              <input
                className="signin-input"
                type="text"
                name="location"
                placeholder="Current Location"
                required
              ></input>
            </div>
            <div className="signin-btn-wrapper">
              <button className="signin-btn">Report Now</button>
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default ReportCase;
