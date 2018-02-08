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
      <span className="station-name">
        <Link className="station-name-link" to={`/stations/${props.station.id}`}>
          <span>
            <span>{props.station.name}</span>

          </span>
        </Link>
        <span className="delete-span" onClick={() => props.deleteOneStation(props.station.id)}><i className="fas fa-trash-alt delete"></i></span>
      </span>
    </div>
  );
};

export default StationIndexItem;
