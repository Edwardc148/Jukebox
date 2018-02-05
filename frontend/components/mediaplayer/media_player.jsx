import React from 'react';
import { Link } from 'react-router-dom';
import ReactMediaPlayer from './react-player.jsx';

class MediaPlayer extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div className="footer-media-player-div">
        <ReactMediaPlayer { ...this.props} />
      </div>
    );
  }
}

export default MediaPlayer;
