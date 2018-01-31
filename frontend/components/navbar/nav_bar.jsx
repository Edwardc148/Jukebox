import React from 'react';
import { Link } from 'react-router-dom';

export default ( { currentUser, logout} ) => {
  const display = currentUser ? (
    <div>
      <h1>Hello, {currentUser.name}</h1>
      <button onClick={logout}>Logout</button>
    </div>
  ) : (
    <div>
      <Link className="button" to={"/signup"}>Sign Up</Link>

      <Link className="button" to={"/login"}>Log In</Link>
    </div>
  );

  return (
    <header className="nav-bar">
      <h1 className="jukebox-logo">JukeBox</h1>
      <div>
        {display}
      </div>
    </header>
  );
};
