import React from 'react';
import ReactPlayer from 'react-player';

class ReactMediaPlayer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      url: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3",
      playing: true,
      volume: 1
    };
  }

  render (){
    return (
      <div>
        <ReactPlayer
          className="react-player"
          url={this.state.url}
          width='20%'
          height='20%'
          playing={this.state.playing}
        />
      </div>
    );
  }
}

export default ReactMediaPlayer;
