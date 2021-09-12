import React from "react";
import Navbar from "../Navbar/Navbar";
import "./Sos.css";

class Sos extends React.Component {
  handleSubmit = (event) => {
    event.preventDefault();

    const req = {
      cust_email: sessionStorage.getItem("cust_email"),
    };
    fetch("http://localhost:8000/customers/send-sms", {
      mode: "no-cors",
      method: "post",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(req),
    });
  };
  
  render() {
    return (
      <div className="sos-outer">
        <Navbar />
        <div class="sos-wrap">
          <button class="sos-button" onClick={this.handleSubmit}>SOS</button>
        </div>
        <div class="sos-text">
          Clicking on SOS will send a message to your registered emergency
          contacts and to nearby emergency services,{" "}
          <span class="sos-bold">
            please click only if you need immediate medical attention
          </span>
        </div>
      </div>
    );
  }
}

export default Sos;
