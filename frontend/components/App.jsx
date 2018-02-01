import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import NavBarContainer from './navbar/nav_bar_container';
import Home from './home/home';
import StationsIndexContainer from './stations/stations_index_container';
import { Route } from 'react-router-dom';
import {
  AuthRoute,
  ProtectedRoute,
} from '../utils/route_utils';

const App = () => (
  <div>
    <Route path="/" component={NavBarContainer} />
    <Route exact path="/" component={Home} />
    <AuthRoute path="/signup" component={SignupContainer} />
    <AuthRoute path="/login" component={LoginContainer} />
    <ProtectedRoute path="/stations" component={StationsIndexContainer} />
  </div>
);

export default App;
