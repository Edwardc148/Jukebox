import React from 'react';
import { connect } from 'react-redux';
import { Redirect, Route, withRouter } from 'react-router-dom';


const mapStateToProps = (state, ownProps) => ({
  loggedIn: Boolean(state.session.currentUser),
  existingStations: Object.keys(state.stations),
  reqStationId: ownProps.match.params.id
});

const Navigation = ({loggedIn, path, component1:Component1, component:Component2}) => (
  <Route
    path={path}
    render={props => (
      loggedIn ? <Component1 {...props} /> : <Component2 {...props} />
    )}
  />
);

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

const ExtraProtected = ({ loggedIn, path, component: Component, existingStations, reqStationId }) => {
  return (<Route
    path={path}
    render={props => (
       existingStations.includes(reqStationId) ? <Component {...props} /> : <Redirect to={"/stations"} />
    )}
  />);
};


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

export const NavigationRoute = withRouter(connect(
  mapStateToProps
)(Navigation));

export const ExtraProtectedRoute =
withRouter(connect(
  mapStateToProps
)(ExtraProtected));
