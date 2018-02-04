import React from 'react';
import ReactPlayer from 'react-player';

class ReactMediaPlayer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
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
    console.log(this.state);
    let playbutton = <i className="fas fa-play fa-2x" onClick={this.playPause()}></i>;
    if (this.state.playing) {
      playbutton = <i className="fas fa-pause fa-2x" onClick={this.playPause()}></i>;
    }
    return (
      <div className="react-player-div">
        <div className='react-player-container'>
          <footer>
            <a href="https://github.com/Edwardc148/Jukebox">Github</a>
          </footer>
          <ReactPlayer
            className="react-player"
            url={this.state.url}
            width='0%'
            height='0%'
            playing={this.state.playing}
          />
          <div className="button-div">
            <div className="playback-buttons" onClick={this.playPause()} >
              {
                playbutton
              }
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ReactMediaPlayer;
