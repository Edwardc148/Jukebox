import React from 'react';
import ReactPlayer from 'react-player';

class ReactMediaPlayer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
      playing: false,
      volume: 1
    };
  }

  playPause () {
    return (
      () => {
        this.setState({ playing: !this.state.playing });
      }
    );
  }

  render (){
    return (
      <div className="react-player-div">
        <div className='react-player-container'>
          <footer>
            <a href="https://github.com/Edwardc148/Jukebox">Github</a>
          </footer>
          <ReactPlayer
            className="react-player"
            url={this.state.url}
            width='100%'
            height='100%'
            playing={this.state.playing}
          />
        <div className="button-div">
            <button
              className="play-button"
              onClick={this.playPause()}>
            </button>
          </div>
        </div>
      </div>
    );
  }
}

export default ReactMediaPlayer;
