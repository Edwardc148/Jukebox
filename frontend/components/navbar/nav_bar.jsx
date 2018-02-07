import React from 'react';
import { Link } from 'react-router-dom';
import Search from './search';

export default ( { currentUser, logout, path, createStation, currentStation } ) => {
  let display;
  console.log(currentStation);
  if (currentUser) {
      display = (
      <div>
        <Link className="button-now-playing" to={`/stations/${currentStation}`}>Now Playing</Link>
        <Link className="button-my-stations" to={"/stations"}>My Stations</Link>

      </div>
    );
  }

  return (
    <header className="nav-bar">
      <span className="search-bar-container">
        <Search currentUser={currentUser} logout={logout} path={path} createStation={createStation} />
      </span>
      <div>
        {display}
      </div>
      <Link className="jukebox-logo-loggedIn" to={"/"}>jukebox</Link>
      <button className="button-logout" onClick={logout}>Logout</button>
    </header>
  );
};
