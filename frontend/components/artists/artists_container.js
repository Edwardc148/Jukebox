import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { receiveOneArtist } from '../../actions/artist_actions';
import ArtistShow from './artist_show';

const mapStateToProps = (state, ownProps) => {
  return {
    artist: state.artist
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchOneArtist: (id) => dispatch(receiveOneArtist(id)),
  };
};

export default withRouter(connect(
  mapStateToProps, mapDispatchToProps
)(ArtistShow));
