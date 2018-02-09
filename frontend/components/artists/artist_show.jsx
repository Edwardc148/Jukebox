import React from 'react';
import { Link } from 'react-router-dom';
import AwesomeLoader from '../loader';
import _ from 'lodash';

class ArtistShow extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount() {
    if (_.isEmpty(this.props.artist)) {
      this.props.fetchOneArtist(this.props.match.params.id);
    }
  }

  render() {
    if (!_.isEmpty(this.props.artist)) {
      let artist = Object.values(this.props.artist)[0];
      return (
        <div className="artist-page-full-div">
          <div className="artist-page-header-div">
            {artist.name}
          </div>

          <div className="artist-page-about-div">
            {artist.description}
          </div>

          <div className="artist-page-albums-div">
            Artist Page Albums
          </div>


        </div>
      );
    } else {
      return (
        <div>hi</div>
      );
    }
  }
}

export default ArtistShow;
