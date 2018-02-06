import React from 'react';
import { connect } from 'react-redux';
import { Redirect, Route, withRouter } from 'react-router-dom';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser)
});

const Auth = ({ loggedIn, path, component: Component }) => (
  <Route
    path={path}
    render={props => (
      loggedIn ? <Redirect to={"/stations"} /> : <Component {...props} />
    )}
  />
);

const Protected = ({ loggedIn, path, component: Component}) => (
  <Route
    path={path}
    render={props => (
      loggedIn ? <Component {...props} /> : <Redirect to={"/login"} />
    )}
  />
);

const Footer = ({ loggedIn, path, component1: Component1, component2: Component2}) => (
  <Route
    path={path}
    render={props => (
      loggedIn ? <Component2 {...props} /> : <Component1 {...props} />
    )}
  />
);

export const AuthRoute = withRouter(connect(
  mapStateToProps
)(Auth));
export const ProtectedRoute = withRouter(connect(
  mapStateToProps
)(Protected));

export const ConditionalMediaRoute = withRouter(connect(
  mapStateToProps
)(Footer));
