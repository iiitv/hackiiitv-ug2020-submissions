// Reference: https://docs.mapbox.com/mapbox-gl-js/example/mapbox-gl-directions/

import React from "react";
import "./Map.css";
import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";
import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions";
import "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions.css";

mapboxgl.accessToken =
  "pk.eyJ1Ijoia2FsYXNoMDQiLCJhIjoiY2t0Zmw0c2QzMDJ1ZTJxcGFsYWYyZWUybyJ9.cfa49VGoH3OghB0LM4piew";

class Map extends React.Component {
  componentDidMount() {
    const map = new mapboxgl.Map({
      container: this.mapWrapper,
      style: "mapbox://styles/mapbox/streets-v11",
      center: [72.8777, 19.076],
      zoom: 10,
    });

    const directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      unit: "metric",
      profile: "mapbox/driving",
    });

    map.addControl(directions, "top-left");
  }

  render() {
    return (
      <div
        ref={(element) => (this.mapWrapper = element)}
        className="map-wrapper"
      />
    );
  }
}

export default Map;
