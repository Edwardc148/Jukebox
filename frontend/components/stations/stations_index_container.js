import React from 'react';
import { connect } from 'react-redux';
import StationsIndex from './stations_index';
import { withRouter } from 'react-router-dom';
import { receiveAllStations, deleteOneStation } from '../../actions/station_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    stations: Object.values(state.stations)
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchAllStations: () => dispatch(receiveAllStations()),
    deleteOneStation: (id) => dispatch(deleteOneStation(id))
  };
};

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(StationsIndex));
