import React from 'react';
import { Link } from 'react-router-dom';
import ReactPlayer from 'react-player';

class MediaPlayer extends React.Component {
  render() {
    return (
      <div className="media-player">
        <ReactPlayer
          className="react-player" url="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3" playing controls volume />
        <footer>
          <a href="https://github.com/Edwardc148/Jukebox">Github</a>
        </footer>
      </div>
    );
  }
}

export default MediaPlayer;
