import React from 'react';
import SignupContainer from './session/signup_container';
import NavBarContainer from './navbar/nav_bar_container';
import StationsIndexContainer from './stations/stations_index_container';
import { Route } from 'react-router-dom';
import {
  AuthRoute,
  ProtectedRoute,
} from '../utils/route_utils';

const App = () => (
  <div>
    <Route path="/" component={NavBarContainer} />
    <AuthRoute path="/signup" component={SignupContainer} />
    <ProtectedRoute path="/stations" component={StationsIndexContainer} />
  </div>
);

export default App;
