import React from 'react';
import StationsIndexContainer from './stations_index_container';
import StationIndexItem from './station_index_item';
import _ from 'lodash';
import AwesomeLoader from '../loader';

class StationsIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchAllStations();
  }

  render() {
    if (_.isEmpty(this.props.stations)) {
      return (
        <div className="awesome-loader">
          <AwesomeLoader />
        </div>
      );
    } else {
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
}

export default StationsIndex;
