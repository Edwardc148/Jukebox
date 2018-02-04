import React from 'react';
import { connect } from 'react-redux';
import MediaPlayer from './media_player';


const mapStateToProps = (state, ownProps) => {
  console.log(state);
  return {
    songs: state.songs
  };
};

export default connect(
  mapStateToProps, null
)(MediaPlayer);
