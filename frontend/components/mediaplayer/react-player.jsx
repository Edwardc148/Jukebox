import React from 'react';
import ReactPlayer from 'react-player';

class ReactMediaPlayer extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props;
    this.onProgress = this.onProgress.bind(this);
    this.onDuration = this.onDuration.bind(this);
    this.stringify = this.stringify.bind(this);
  }

  componentWillReceiveProps(newProps) {
    this.setState({playback: newProps.playback});
  }

  componentWillUpdate(nextProps, nextState) {
    if (nextState.duration > 1) {
      if (nextState.playedSeconds === nextState.duration) {
        this.setState({'playedSeconds': 0});
        nextProps.nextSong();
      }
    }
  }

  onProgress(state) {
    this.setState({'playedSeconds': state.playedSeconds});
  }

  onDuration(duration) {
    this.setState({'duration': duration});
  }

  ref(){
     return player => {
       this.player = player;
     };
   }

  stringify(value) {
    let integer;
    if (value) {
      integer = Math.floor(value);

      if (integer >= 60) {
        let min = Math.floor(integer/60);
        let remainderInt = integer%60;
        if (remainderInt >= 10) {
          integer = `0${min}:${remainderInt}`;
        } else {
          integer = `0${min}:0${remainderInt}`;
        }
      } else {
        if (integer >= 10) {
          integer = `00:${integer}`;
        } else {
          integer = `00:0${integer}`;
        }
      }
      return integer;
    } else {
      return "00:00";
    }
  }

  render (){
    let playbutton;
    return (
      <div className="react-player-div">
        <div className='react-player-container'>
          <footer>
            <a href="https://github.com/Edwardc148/Jukebox">Github</a>
          </footer>
          <ReactPlayer
            ref={this.ref()}
            className="react-player"
            url={this.state.playback.current_song_url}
            width='0%'
            height='0%'
            playing={this.props.playback.playing}
            onProgress={this.onProgress}
            onDuration={this.onDuration}
          />
          <div className="button-div">
            <div className="playback-buttons" >
              <span className="repeat"><i className="fas fa-redo-alt fa-2x repeat"></i></span>


          {this.state.playback.playing ?
            <span onClick={this.props.togglePlayPause}><i className="fas fa-pause fa-2x pause-button"></i></span>
              :
              null
          }

          {!this.state.playback.playing ?
            <span onClick={this.props.togglePlayPause}><i className="fas fa-play fa-2x play-button"></i></span>
              :
              null
          }
              <span className="next-button" onClick={this.props.nextSong}><i className="fas fa-fast-forward fa-2x next-button"></i></span>

              <div className="duration">
                <span className="played">{this.stringify(this.state.playedSeconds)}</span>
                <span className="song-duration">{this.stringify(this.state.duration)}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ReactMediaPlayer;
