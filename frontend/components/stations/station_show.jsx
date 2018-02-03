import React from 'react';
import StationShowContainer from './station_show_container';
import StationShowIndexItem from './station_show_index_item';
import { Link } from 'react-router-dom';

class StationShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.station;
  }

  componentDidMount() {
    // this.props.fetchAllStations();
    // console.log(this.props);
    if (this.props.stations.length <= 1) {
      this.props.fetchAllStations()
        .then(this.props.fetchOneStation(this.props.match.params.id));
    } else {
      this.props.fetchOneStation(this.props.match.params.id);
    }
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.id !== nextProps.match.params.id) {
      nextProps.fetchOneStation(nextProps.match.params.id);
    }
  }

  render() {

    // if (this.props.station) {
    //   const song = Object.values(this.state.songs)[0];
    //   console.log(song);
    // }

    if (this.props.station) {
      console.log(this.props);
      let current_song_id = this.props.station.songs[0];
      console.log(current_song_id);
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
            <p><span>{this.props.songs[current_song_id].name}</span></p>
            <p><span>{this.props.songs[current_song_id].artist_name}</span></p>
            <p><span>{this.props.songs[current_song_id].album_name}</span></p>
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
