import React from 'react';
import StationsIndexContainer from './stations_index_container';
import StationIndexItem from './station_index_item';

class StationsIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchAllStations();
  }

  render() {
    return (
      <div className="station-index-div">
        <ul className="station-index">
          {this.props.stations.map(station => {
            return (
              <StationIndexItem
                key={station.id}
                station={station}
                deleteOneStation={this.props.deleteOneStation}
              />
            );
          })}
        </ul>
      </div>
    );
  }
}

export default StationsIndex;
