import React from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Home from "./Components/Home/Home";
import Signin from "./Components/Signin/Signin";
import Signup from "./Components/Signup/Signup";
import "./App.css";

function App() {
  return (
    <div className="App">
      <Router>
        <Route exact path="/" component={Home}/>
        <Route exact path="/nearestHosp" />
        <Route exact path="/sos" />
        <Route exact path="/login" component={Signin}/>
        <Route exact path="/register" component={Signup}/>
        <Route exact path="/covid" />
        <Route exact path="/contact" />
      </Router>
    </div>
  );
}

export default App;
