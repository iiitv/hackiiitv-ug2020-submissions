import Navbar from "../Navbar/Navbar";
import covid from "../../Assests/covid.png";
import "./Covid.css"

const Covid = () => {
  return (
    <div>
      <Navbar></Navbar>
      <div>
        <img src={covid} alt="Logo" />
      </div>
    </div>
  );
};

export default Covid;