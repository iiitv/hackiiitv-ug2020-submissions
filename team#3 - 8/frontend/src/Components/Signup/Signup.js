import React from "react";

class NameForm extends React.Component {
  handleSubmit = (event) => {
    event.preventDefault()

    const req = {
      "cust_email": event.target.email.value,
      "password": event.target.password.value,
      "name": event.target.name.value,
      "address": event.target.address.value,
      "dob": "18/09/2002",
      "pincode": event.target.pincode.value,
      "phone_number" : event.target.phone_number.value,
      "emergency_contact1" : event.target.econe.value,
      "emergency_contact2" : event.target.ectwo.value,
    }
    fetch('http://localhost:8000/customers/signup', {
            mode: 'no-cors',
            method: "post",
            headers: {
                 "Content-Type": "application/json"
            },
            body: JSON.stringify(req)
    })
  }
  render() {
    return (
      <div className="signin-container">
      <div className="signin-wrapper">
        <form className="signin" onSubmit={this.handleSubmit}>
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
            <input className="signin-input" name="date" type="date"></input>
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="address"
              placeholder="Address"
            ></input>
          </div>
          <div className="signin-input-wrapper">
            <input className="signin-input" 
            type="text" 
            name="pincode"
            placeholder="Pincode" />
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="phone_number"
              placeholder="Phone Number"
            />
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="econe"
              placeholder="Emergency Contact 1"
            />
          </div>
          <div className="signin-input-wrapper">
            <input
              className="signin-input"
              type="text"
              name="ectwo"
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
    )
  }
}



export default NameForm;
