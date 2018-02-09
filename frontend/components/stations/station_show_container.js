import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { receiveOneStation, receiveAllStations } from '../../actions/station_actions';
import { receiveOneArtist } from '../../actions/artist_actions';
import StationShow from './station_show';

const mapStateToProps = (state, ownProps) => {
  return {
    station: state.stations[ownProps.match.params.id],
    stations: Object.values(state.stations),
    songs: state.songs,
    playback: state.playback,
    ownProps: ownProps
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchOneStation: (id) => dispatch(receiveOneStation(id)),
    fetchAllStations: () => dispatch(receiveAllStations()),
    fetchOneArtist: (id) => dispatch(receiveOneArtist(id)),
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(StationShow));
