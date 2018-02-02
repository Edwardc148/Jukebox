import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import NavBarContainer from './navbar/nav_bar_container';
import MediaPlayerContainer from './mediaplayer/media_player_container';
import Home from './home/home';
import StationsIndexContainer from './stations/stations_index_container';
import StationShowContainer from './stations/station_show_container';
import { Route, Switch } from 'react-router-dom';
import {
  AuthRoute,
  ProtectedRoute,
} from '../utils/route_utils';

const App = () => (
  <div id="container">
    <Route path="/" component={NavBarContainer} />
    <Switch>
      <Route exact path="/" component={Home} />
      <AuthRoute path="/signup" component={SignupContainer} />
      <AuthRoute path="/login" component={LoginContainer} />
      <ProtectedRoute path="/stations/:id" component={StationShowContainer} />
      <ProtectedRoute path="/stations" component={StationsIndexContainer} />
      <Route component={Home} />
    </Switch>
    <Route path="/" component={MediaPlayerContainer} />
  </div>
);

export default App;
