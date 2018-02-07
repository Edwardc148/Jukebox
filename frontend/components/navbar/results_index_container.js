import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import ResultsIndex from './results_index';

const mapStateToProps = (state, ownProps) => {
  return {

  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {

  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ResultsIndex));
