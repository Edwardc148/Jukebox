import React from 'react';
import { connect } from 'react-redux';
import NavBar from './nav_bar';
import { logout } from '../../actions/session_actions';
import { createOneStation} from '../../actions/station_actions';
import { withRouter } from 'react-router-dom';


const mapStateToProps = (state, ownProps) => {
  return {
  currentUser: state.session.currentUser,
  path: ownProps.location.pathname
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  createStation: (station) => dispatch(createOneStation(station))
});

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(NavBar));
