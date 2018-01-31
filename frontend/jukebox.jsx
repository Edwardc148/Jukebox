import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  window.store = store;
  window.getState = store.getState;
  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome To Jukebox (Second Try)</h1>, root);
});
