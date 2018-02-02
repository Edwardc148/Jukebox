import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { receiveOneStation } from '../../actions/station_actions';
import StationShow from './station_show';

const mapStateToProps = (state, ownProps) => {
  console.log(ownProps);
  return {

  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    fetchOneStation: (station) => dispatch(receiveOneStation(station))
  };
};

export default withRouter(connect(null, mapDispatchToProps)(StationShow));
