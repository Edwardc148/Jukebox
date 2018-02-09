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
      var image_url = artist.image_url;
      let background_image = { backgroundImage: 'url(' + image_url + ')'};
      return (
        <div className="artist-page-full-div">
          <div className="artist-page-header-div" style={background_image}>
            <div className="artist-page-name">{artist.name}</div>
            <div className="view-counter">35 M Listeners</div>
            <Link className="link-back-to-stations" to={`/stations`}><i className="fas fa-play-circle play-circle fa-5x"></i></Link>
          </div>

          <div className="artist-page-about-div">
            <h3>About {artist.name}</h3>
            <div className="artist-page-about">
              {artist.description}
            </div>
          </div>

        </div>
      );
    } else {
      return (
        <AwesomeLoader />
      );
    }
  }
}

export default ArtistShow;
