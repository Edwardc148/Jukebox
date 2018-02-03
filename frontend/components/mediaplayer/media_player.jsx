import React from 'react';
import { Link } from 'react-router-dom';
import ReactMediaPlayer from './react-player.jsx';

class MediaPlayer extends React.Component {
  render() {
    return (
      <div className="media-player">
        <ReactMediaPlayer />
        <footer>
          <a href="https://github.com/Edwardc148/Jukebox">Github</a>
        </footer>
      </div>
    );
  }
}

export default MediaPlayer;
