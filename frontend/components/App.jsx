import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import NavBarContainer from './navbar/nav_bar_container';
import LoggedOutNavBarContainer from './navbar/logged_out_nav_container';
import MediaPlayerContainer from './mediaplayer/media_player_container';
import Home from './home/home';
import StationsIndexContainer from './stations/stations_index_container';
import StationShowContainer from './stations/station_show_container';
import ArtistShowContainer from './artists/artists_container';
import DefaultMediaContainer from './home/foot_container';
import { Route, Switch } from 'react-router-dom';
import {
  AuthRoute,
  ProtectedRoute,
  ConditionalMediaRoute,
  NavigationRoute,
  ExtraProtectedRoute
} from '../utils/route_utils';

const App = () => (
  <div id="container">
      <NavigationRoute component1={NavBarContainer} component={LoggedOutNavBarContainer} />
    <Switch>
      <Route exact path="/" component={Home} />
      <AuthRoute path="/signup" component={SignupContainer} />
      <AuthRoute path="/login" component={LoginContainer} />
      <ProtectedRoute path="/stations/:id" component={StationShowContainer} />
      <ProtectedRoute path="/stations" component={StationsIndexContainer} />
      <ProtectedRoute path="/artists/:id" component={ArtistShowContainer} />
      <Route component={Home} />
    </Switch>
    <Switch>
      <ConditionalMediaRoute component1={DefaultMediaContainer} component2={MediaPlayerContainer} />
    </Switch>
  </div>
);

export default App;
