import React from 'react';
import StationShowContainer from './station_show_container';
import StationShowIndexItem from './station_show_index_item';
import { Link } from 'react-router-dom';

class StationShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    // this.props.fetchAllStations();
    if (this.props.stations.length <= 1) {
      this.props.fetchAllStations()
        .then(this.props.fetchOneStation(this.props.match.params.id));
    } else {
      this.props.fetchOneStation(this.props.match.params.id);
    }
  }

  render() {
    if (this.props.station) {
      return (
        <div className="show-station-full-div">
          <div className="show-station-index-div">
            <ul className="show-station-index">
              {this.props.stations.map(station => {
                return (
                  <StationShowIndexItem
                    key={station.id}
                    station={station}
                  />
                );
              })}
            </ul>
          </div>
          <div className="show-station-div">
            <Link
              className="image-to-stations" to={`/stations/`}>
              <img
                className="big-album-image"
                src={this.props.station.image_url}>
              </img>
            </Link>
          </div>
        </div>
      );
    } else {
      return (
        <h1>Loading</h1>
      );
    }
  }
}

export default StationShow;
