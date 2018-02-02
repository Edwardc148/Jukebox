import React from 'react';
import { Link } from 'react-router-dom';

const StationIndexItem = props => {
  return (
    <div className="station-index-item">
      <Link
        className="radio-image" to={"/stations"}>
        <img
          className="album-image" src={props.station.image_url} width="100" height="100">
        </img>
      </Link>

      <Link
        className="station-name" to={"/stations"}>
        {props.station.name}
      </Link>
    </div>
  );
};

export default StationIndexItem;
