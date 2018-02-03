import React from 'react';
import { Link } from 'react-router-dom';

const StationShowIndexItem = props => {
  return (
    <div className="show-station-index-item">

      <div className="for-hover">
        <Link
          className="show-radio-image" to={`/stations/${props.station.id}`}>
          <img
            className="show-album-image" src={props.station.image_url} width="100" height="100">
          </img>
          <div className="show-station-name">{props.station.name}
          </div>
        </Link>

      </div>
    </div>
  );
};

export default StationShowIndexItem;
