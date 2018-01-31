import React from 'react';
import SignupContainer from './session/signup_container';
import NavBarContainer from './navbar/nav_bar_container';
import { Route } from 'react-router-dom';

const App = () => (
  <div>
    <Route path="/" component={NavBarContainer} />
    <Route path="/signup" component={SignupContainer} />
  </div>
);

export default App;
