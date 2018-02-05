import React from 'react';
import ReactPlayer from 'react-player';

class ReactMediaPlayer extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props;
  }

  componentWillReceiveProps(newProps) {
    this.setState({playback: newProps.playback});
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
            className="react-player"
            url={this.state.playback.current_song_url}
            width='0%'
            height='0%'
            playing={this.props.playback.playing}
          />
          <div className="button-div">
            <div className="playback-buttons" >
              <span className="repeat"><i className="fas fa-redo-alt fa-2x"></i></span>
              {this.state.playback.playing ? <span onClick={this.props.togglePlayPause}><i className="fas fa-pause fa-2x" onClick={this.props.togglePlayPause} ></i></span> : <span onClick={this.props.togglePlayPause}><i className="fas fa-play fa-2x" onClick={this.props.togglePlayPause} ></i></span>
              }
              <span className="next-button" onClick={this.props.nextSong}><i className="fas fa-fast-forward fa-2x"></i></span>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ReactMediaPlayer;
