import React from 'react';
import StationShowContainer from './station_show_container';

class StationShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    console.log(this.props);
    this.props.fetchOneStation(this.props.match.params.id);
  }

  render() {
    return (
      <div>
        <img
          className="album-image" src={this.props.station.image_url} width="100" height="100">
        </img>
      </div>
    );
  }
}

export default StationShow;
