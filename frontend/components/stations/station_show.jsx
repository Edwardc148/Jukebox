import React from 'react';
import StationShowContainer from './station_show_container';
import StationShowIndexItem from './station_show_index_item';
import { Link } from 'react-router-dom';

class StationShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    console.log(this.props);
    this.props.fetchAllStations();
    this.props.fetchOneStation(this.props.match.params.id);
    console.log(this.props);
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
