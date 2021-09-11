import React from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import Home from "./Components/Home/Home";
import "./App.css";

function App() {
  return (
    <div className="App">
      <Router>
        <Route exact path="/">
          <Home />
        </Route>
        <Route exact path="/nearestHosp"></Route>
        <Route exact path="/sos"></Route>
        <Route exact path="/login_signup"></Route>
        <Route exact path="/covid"></Route>
        <Route exact path="/contact"></Route>
      </Router>
    </div>
  );
}

export default App;
