import React from 'react';
import { Link } from 'react-router-dom';
import ReactMediaPlayer from './react-player.jsx';

class MediaPlayer extends React.Component {
  render() {
    return (
      <div className="footer-media-player-div">
        <ReactMediaPlayer />

      </div>
    );
  }
}

export default MediaPlayer;
