import React from 'react';
import { connect } from 'react-redux';
import MediaPlayer from './media_player';
import { togglePlayPause, nextSong } from '../../actions/media_actions';


const mapStateToProps = (state, ownProps) => {
  return {
    songs: state.songs,
    playback: state.playback
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    togglePlayPause: () => dispatch(togglePlayPause()),
    nextSong: () => dispatch(nextSong())
  };
};

export default connect(
  mapStateToProps, mapDispatchToProps
)(MediaPlayer);
