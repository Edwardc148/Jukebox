import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { receiveOneArtist, clearErrors } from '../../actions/artist_actions';
import ArtistShow from './artist_show';

const mapStateToProps = (state, ownProps) => {
  return {
    artist: state.artist,
    errors: state.errors.artist
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchOneArtist: (id) => dispatch(receiveOneArtist(id)),
    clearErrors: () => dispatch(clearErrors())
  };
};

export default withRouter(connect(
  mapStateToProps, mapDispatchToProps
)(ArtistShow));
