import React from 'react';
import { Link } from 'react-router-dom';

export default ( { currentUser, logout, path} ) => {
  let display;
  if (currentUser) {
      display = (
      <div>
        <Link className="button-now-playing" to={"/stations"}>Now Playing</Link>
        <Link className="button-my-stations" to={"/stations"}>My Stations</Link>
        <button className="button-logout" onClick={logout}>Logout</button>
      </div>
    );
  } else {
    let link;
    if (path === '/signup') {
      link = <Link className="button-login" to={"/login"}>Log In</Link>;
    } else {
      link = <Link className="button-signup" to={"/signup"}>Sign Up</Link>;
    }
    display = (
      <div>
        {link}
      </div>
    );
  }

  return (
    <header className="nav-bar">
      <Link className="jukebox-logo" to={"/"}>jukebox</Link>
      <span>
        <input className="search-bar" type="search" placeholder="Create A Station"></input>
      </span>
      <div>
        {display}
      </div>
    </header>
  );
};
