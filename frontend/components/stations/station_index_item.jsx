import React from 'react';
import { Link } from 'react-router-dom';

const StationIndexItem = props => {
  return (
    <div className="station-index-item">
      <Link
        className="radio-image"
        to={`/stations/${props.station.id}`}>
        <img
          className="album-image" src={props.station.image_url} width="100" height="100">
        </img>
      </Link>
      <p className="station-name">
        <Link className="station-name-link" to={`/stations/${props.station.id}`}>
          <span>
            {props.station.name}
          </span>
        </Link>
      </p>
    </div>
  );
};

export default StationIndexItem;
