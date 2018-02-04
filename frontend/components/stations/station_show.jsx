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

      this.props.fetchAllStations()
        .then(this.props.fetchOneStation(this.props.match.params.id));

  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.id !== nextProps.match.params.id) {
      nextProps.fetchAllStations()
        .then(nextProps.fetchOneStation(nextProps.match.params.id));
    }
  }

  render() {

    console.log(this.props.songs);
    console.log(this.props.station);
    let boolean = this.props.songs.hasOwnProperty(this.props.station.songs[0]);
    if ((Object.values(this.props.songs).length >= 1) && (this.props.station !== undefined && boolean) ) {
      console.log(this.props.songs);
      let current_song_id = this.props.station.songs[0];
      console.log(current_song_id);
      debugger;
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
            <p className="show-song-name">
              <span>
                {this.props.songs[current_song_id].name}
              </span>
            </p>
            <p className="show-artist-name">
              <span>
                {this.props.songs[current_song_id].artist_name}
              </span>
            </p>
            <p className="show-album-name">
              <span>
                {this.props.songs[current_song_id].album_name}
              </span>
            </p>
          </div>
        </div>
      );
    } else {
      console.log(this.props);
      return (
        <h1>Loading</h1>
      );
    }
  }
}

export default StationShow;
