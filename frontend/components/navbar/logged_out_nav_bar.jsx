import React from 'react';
import { Link } from 'react-router-dom';

export default ( { currentUser, logout, path} ) => {
  let display;
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

  return (
    <header className="nav-bar">
      <Link className="jukebox-logo" to={"/"}>jukebox</Link>
      <div>
        {display}
      </div>
    </header>
  );
};
