import React from 'react';
import StationShowContainer from './station_show_container';
import StationShowIndexItem from './station_show_index_item';
import { Link } from 'react-router-dom';
import AwesomeLoader from '../loader';
import _ from 'lodash';

class StationShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.station;
    this.handleErrors = this.handleErrors.bind(this);
  }

  handleErrors() {
    this.props.clearErrors();
    this.props.history.push('/stations');
  }

  componentDidMount() {
    if (_.isEmpty(this.props.songs)) {
      this.props.fetchAllStations()
        .then(this.props.fetchOneStation(this.props.match.params.id));
    } else {
      if (this.props.station.id !== this.props.playback.current_station) {
        this.props.fetchOneStation(this.props.match.params.id);
      }
    }
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.id !== nextProps.match.params.id) {
      nextProps.fetchOneStation(nextProps.match.params.id);
    }
  }

  render() {
    let boolean = false;
    if (this.props.station && this.props.station.songs) {
      boolean = this.props.songs.hasOwnProperty(this.props.station.songs[0]);
    }

    if ((Object.values(this.props.songs).length >= 1) && (this.props.station !== undefined && boolean) ) {
      let current_song_id = this.props.station.songs[0];
      var image_url = this.props.songs[this.props.playback.current_song].album_image_url;
      let background_image = { backgroundImage: 'url(' + image_url + ')'};
      return (
        <div className="show-station-full-div" style={background_image}>
          <div className="show-station-index-div">
            <ul className="show-station-index">
              {this.props.stations.reverse().slice(0,6).map(station => {
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
            <span
              className="image-to-stations" onClick={() => this.props.fetchOneArtist(this.props.songs[this.props.playback.current_song].artist_id)
                .then(serverArtist => {
                  this.props.ownProps.history.push(`/artists/${serverArtist.artist.id}`);})}>
              <img
                className="big-album-image"
                src={this.props.songs[this.props.playback.current_song].album_image_url}>
              </img>
            </span>

              <p className="show-song-name">
                <span className="song-name-clicker">
                  {this.props.songs[this.props.playback.current_song].name}
                </span>
              </p>

            <p className="show-artist-name">
              <span className="artist-name-clicker" onClick={() => this.props.fetchOneArtist(this.props.songs[this.props.playback.current_song].artist_id)
                .then(serverArtist => {
                  this.props.ownProps.history.push(`/artists/${serverArtist.artist.id}`);})}>
                {this.props.songs[this.props.playback.current_song].artist_name}
              </span>
            </p>
            <p className="show-album-name">
              <span className="album-name-clicker">
                {this.props.songs[this.props.playback.current_song].album_name}
              </span>
            </p>
          </div>
        </div>
      );
    } else if (!_.isEmpty(this.props.errors)) {
      return (
        <div className="awesome-loader">
          <AwesomeLoader />
          <h1 className="page-not-found">Page Not Found</h1>
          <div className="back-to-stations" onClick={this.handleErrors}>Back to stations</div>
        </div>
      );
    } else {
      return (
        <div className="awesome-loader">
          <AwesomeLoader />
        </div>
      );
    }
  }
}

export default StationShow;
